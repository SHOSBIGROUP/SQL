USE [sho_dw]
GO
/****** Object:  StoredProcedure [dbo].[spGetSQLTableInsertFormatted]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP PROCEDURE [dbo].[spGetSQLTableInsertFormatted]
GO
/****** Object:  StoredProcedure [dbo].[spGetSQLTableInsertFormatted]    Script Date: 10/26/2018 4:01:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetSQLTableInsertFormatted]
	-- Add the parameters for the stored procedure here
	@catalogName varchar(30),
	@schemaName varchar(15),
	@tableName varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   Select Distinct 'Insert Into ' + TABLE_CATALOG + '.' + TABLE_SCHEMA + '.' + TABLE_NAME + '(' from information_schema.columns where TABLE_CATALOG = @catalogName and TABLE_SCHEMA =  @schemaName and TABLE_NAME = @tableName
	UNION ALL 
	Select '[' + COLUMN_NAME + '],' from information_schema.columns where TABLE_CATALOG = @catalogName and TABLE_SCHEMA = @schemaName and TABLE_NAME = @tableName
	UNION ALL 
	Select ') Select '
	UNION ALL 
	Select CASE 
	WHEN CONVERT(int,CHARACTER_MAXIMUM_LENGTH) > 0 
	THEN 'Convert(' + DATA_TYPE + '(' + Convert(varchar(4),CHARACTER_MAXIMUM_LENGTH) + '),[' + COLUMN_NAME + ']),'
	ELSE 'Convert(' + DATA_TYPE + ',[' + COLUMN_NAME + ']),'
	END
	from information_schema.columns where TABLE_CATALOG = @catalogName and TABLE_SCHEMA = @schemaName and TABLE_NAME = @tableName
	UNION ALL 
	Select ' From ' + @catalogName + '.' + @schemaName + '.' + @tableName;

END
GO

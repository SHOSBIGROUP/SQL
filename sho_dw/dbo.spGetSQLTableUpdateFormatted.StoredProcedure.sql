USE [sho_dw]
GO
/****** Object:  StoredProcedure [dbo].[spGetSQLTableUpdateFormatted]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP PROCEDURE [dbo].[spGetSQLTableUpdateFormatted]
GO
/****** Object:  StoredProcedure [dbo].[spGetSQLTableUpdateFormatted]    Script Date: 11/13/2018 3:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetSQLTableUpdateFormatted]
	-- Add the parameters for the stored procedure here
	@catalogName varchar(30),
	@schemaName varchar(15),
	@tableName varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   Select Distinct 'Update ' + TABLE_CATALOG + '.' + TABLE_SCHEMA + '.' + TABLE_NAME + ' Set ' from information_schema.columns where TABLE_CATALOG = @catalogName and TABLE_SCHEMA =  @schemaName and TABLE_NAME = @tableName
	UNION ALL 
	Select CASE 
	WHEN CONVERT(int,CHARACTER_MAXIMUM_LENGTH) > 0 
	THEN '[' + COLUMN_NAME + '] = ' + 'Convert(' + DATA_TYPE + '(' + Convert(varchar(4),CHARACTER_MAXIMUM_LENGTH) + '),[' + COLUMN_NAME + ']),'
	ELSE '[' + COLUMN_NAME + '] = ' + 'Convert(' + DATA_TYPE + ',[' + COLUMN_NAME + ']),'
	END
	from information_schema.columns where TABLE_CATALOG = @catalogName and TABLE_SCHEMA = @schemaName and TABLE_NAME = @tableName
	UNION ALL 
	Select ' From ' + @catalogName + '.' + @schemaName + '.' + @tableName + ' Inner Join ' + @catalogName + '.' + @schemaName + '.' + @tableName + ' On ';

END
GO

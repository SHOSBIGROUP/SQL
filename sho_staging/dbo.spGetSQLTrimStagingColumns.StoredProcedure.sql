USE [sho_staging]
GO
/****** Object:  StoredProcedure [dbo].[spGetSQLTrimStagingColumns]    Script Date: 10/26/2018 4:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetSQLTrimStagingColumns]
	-- Add the parameters for the stored procedure here
	@catalogName varchar(30),
	@schemaName varchar(15),
	@tableName varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Select 'Update [' + @catalogName + '].[' + @schemaName + '].[' + @tableName + '] Set '
	UNION ALL
	Select '[' + COLUMN_NAME + '] = TRIM([' + COLUMN_NAME + ']), ' from information_schema.columns where TABLE_CATALOG = @catalogName and TABLE_SCHEMA = @schemaName and TABLE_NAME = @tableName 
	and UPPER(DATA_TYPE) Like '%CHAR%';

END
GO

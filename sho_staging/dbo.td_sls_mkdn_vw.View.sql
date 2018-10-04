USE [sho_staging]
GO
/****** Object:  View [dbo].[td_sls_mkdn_vw]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP VIEW [dbo].[td_sls_mkdn_vw]
GO
/****** Object:  View [dbo].[td_sls_mkdn_vw]    Script Date: 10/4/2018 3:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---use teradata_raw
   create view [dbo].[td_sls_mkdn_vw]
as 
select MKDN_DT as TRS_DT,LOC_NO,DIV_NO,REG_MDS,PRO_MDS from  td_sales_dly_markdowns  
union all
select MKDN_DT as TRS_DT,LOC_NO,DIV_NO,REG_MDS,PRO_MDS from td_sales_dly_markdowns_ly 


GO

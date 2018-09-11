USE [sho_staging]
GO
/****** Object:  View [dbo].[td_sls_dly_pam_vw]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP VIEW [dbo].[td_sls_dly_pam_vw]
GO
/****** Object:  View [dbo].[td_sls_dly_pam_vw]    Script Date: 9/11/2018 9:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---use teradata_raw
   create view [dbo].[td_sls_dly_pam_vw]
 as 
select  TRS_DT,LOC_NO, POS_DIV,netsales pa_sales ,pamunits as pam_units from td_sales_dly_pa_merch  
union all
 select  TRS_DT,LOC_NO,POS_DIV, netsales pa_sales , 0 as pam_units from td_sales_dly_pa_merch_ly

GO

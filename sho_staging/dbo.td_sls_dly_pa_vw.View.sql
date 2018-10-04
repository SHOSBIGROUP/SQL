USE [sho_staging]
GO
/****** Object:  View [dbo].[td_sls_dly_pa_vw]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP VIEW [dbo].[td_sls_dly_pa_vw]
GO
/****** Object:  View [dbo].[td_sls_dly_pa_vw]    Script Date: 10/4/2018 3:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---use teradata_raw
   create view [dbo].[td_sls_dly_pa_vw]
 as 
select  TRS_DT,LOC_NO, div_no as div_no,netsales pa_sales ,pamunits pa_units from td_sales_dly_pa  
union all
 select  TRS_DT,LOC_NO,div_no, netsales pa_sales ,pamunits pa_units from td_sales_dly_pa_ly
GO

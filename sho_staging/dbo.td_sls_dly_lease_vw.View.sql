USE [sho_staging]
GO
/****** Object:  View [dbo].[td_sls_dly_lease_vw]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP VIEW [dbo].[td_sls_dly_lease_vw]
GO
/****** Object:  View [dbo].[td_sls_dly_lease_vw]    Script Date: 10/4/2018 3:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---use teradata_raw
   create view [dbo].[td_sls_dly_lease_vw] as 
select  TRS_DT,LOC_NO,Div_no,LseSales,LseUnits  from  td_sales_dly_lease_sales   
union  all
  select  TRS_DT,LOC_NO,Div_no,LseSales,LseUnits from td_sales_dly_lease_sales_ly 
GO

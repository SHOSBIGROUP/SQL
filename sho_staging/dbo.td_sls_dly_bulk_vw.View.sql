USE [sho_staging]
GO
/****** Object:  View [dbo].[td_sls_dly_bulk_vw]    Script Date: 10/26/2018 4:02:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---use teradata_raw
  create view [dbo].[td_sls_dly_bulk_vw] as (select *  from 
(select  TRS_DT,LOC_NO, bulk_unit ,bulk_sales from  td_sales_dly_bulk_sales  
union  all
 select   TRS_DT,LOC_NO, bulk_unit ,bulk_sales from  td_sales_dly_bulk_sales_ly 
) bulk_sales)
GO

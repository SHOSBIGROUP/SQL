USE [sho_staging]
GO
/****** Object:  View [dbo].[td_sls_dly_sppmerch_vw]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP VIEW [dbo].[td_sls_dly_sppmerch_vw]
GO
/****** Object:  View [dbo].[td_sls_dly_sppmerch_vw]    Script Date: 9/11/2018 9:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---use teradata_raw
   create view [dbo].[td_sls_dly_sppmerch_vw] as 
--select *  from 
select  TRS_DT,LOC_NO, netsales as sppmerch_sales  from td_sales_dly_spp_merch 
union all
 select  TRS_DT,LOC_NO, netsales as sppmerch_sales from td_sales_dly_spp_merch_ly
--) sppmerch_sales


GO

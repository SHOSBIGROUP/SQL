USE [sho_staging]
GO
/****** Object:  View [dbo].[td_sls_dly_credit_sales_vw]    Script Date: 10/26/2018 4:02:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---use teradata_raw
   create view [dbo].[td_sls_dly_credit_sales_vw] as 
 
SELECT LOC_NO	,
TRS_DT	,
SCARDAM,
TOT_MINUS_GC FROM  td_sales_dly_credit_share  
union all
SELECT LOC_NO	,
TRS_DT	,
SCARDAM,
TOT_MINUS_GC FROM  td_sales_dly_credit_share_ly  
GO

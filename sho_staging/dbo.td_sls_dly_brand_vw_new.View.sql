USE [sho_staging]
GO
/****** Object:  View [dbo].[td_sls_dly_brand_vw_new]    Script Date: 10/26/2018 4:02:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---use teradata_raw
  create view [dbo].[td_sls_dly_brand_vw_new] as (
(select TRS_DT,LOC_NO,DIV_NO,brs1.PRD_CHR_ATR_CD,NETSALES, 0 as NETUNITS,PRD_CHR_ATR_DS from td_sales_dly_brand_attr  brs1
join 
(select cast(PRD_CHR_ATR_CD as integer) as PRD_CHR_ATR_CD,PRD_CHR_ATR_DS from  td_brand_description 
where prd_chr_atr_cd in ('3274','5486','5488','5489','6962','7962') ) br on br.prd_chr_atr_cd =brs1.PRD_CHR_ATR_CD  
 union all
 select TRS_DT,LOC_NO,DIV_NO,brs2.PRD_CHR_ATR_CD,NETSALES, 0 as NETUNITS,PRD_CHR_ATR_DS from td_sales_dly_brand_attr_ly  brs2
join 
(select cast(PRD_CHR_ATR_CD as integer) as PRD_CHR_ATR_CD,PRD_CHR_ATR_DS from  td_brand_description 
where prd_chr_atr_cd in ('3274','5486','5488','5489','6962','7962') ) br on br.prd_chr_atr_cd =brs2.PRD_CHR_ATR_CD  
))
GO

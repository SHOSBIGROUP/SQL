USE [sho_staging]
GO
/****** Object:  View [dbo].[td_sls_dly_brand_vw]    Script Date: 10/26/2018 4:02:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---use teradata_raw
  create view [dbo].[td_sls_dly_brand_vw] as
(( select brs.*,br.PRD_CHR_ATR_DS
  from 
(select TRS_DT,LOC_NO,DIV_NO,PRD_CHR_ATR_CD,NETSALES, 0 as NETUNITS from td_sales_dly_brand_attr  
union all
select TRS_DT,LOC_NO,DIV_NO,PRD_CHR_ATR_CD,NETSALES,0 as NETUNITS from  td_sales_dly_brand_attr_ly ) brs
join 
(select cast(PRD_CHR_ATR_CD as integer) as PRD_CHR_ATR_CD,PRD_CHR_ATR_DS from   td_brand_description  where prd_chr_atr_cd in ('3274','5486','5488','5489','6962','7962')) as br
on br.prd_chr_atr_cd =brs.PRD_CHR_ATR_CD  ))
GO

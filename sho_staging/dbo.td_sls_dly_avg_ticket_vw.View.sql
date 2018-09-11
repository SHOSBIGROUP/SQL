USE [sho_staging]
GO
/****** Object:  View [dbo].[td_sls_dly_avg_ticket_vw]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP VIEW [dbo].[td_sls_dly_avg_ticket_vw]
GO
/****** Object:  View [dbo].[td_sls_dly_avg_ticket_vw]    Script Date: 9/11/2018 9:33:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


---use teradata_raw
  create view [dbo].[td_sls_dly_avg_ticket_vw]  as
( SELECT LOC_NO	,
TRS_DT,
DIV_NO,
NETSLS,
UNITQTY FROM   td_sales_dly_avg_ticket 
union all
SELECT LOC_NO	,
TRS_DT,
DIV_NO,
NETSLS,
UNITQTY FROM  td_sales_dly_avg_ticket_ly   )
GO

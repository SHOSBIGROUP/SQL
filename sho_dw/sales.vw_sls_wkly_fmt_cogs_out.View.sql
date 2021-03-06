USE [sho_dw]
GO
/****** Object:  View [sales].[vw_sls_wkly_fmt_cogs_out]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP VIEW [sales].[vw_sls_wkly_fmt_cogs_out]
GO
/****** Object:  View [sales].[vw_sls_wkly_fmt_cogs_out]    Script Date: 11/13/2018 3:54:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [sales].[vw_sls_wkly_fmt_cogs_out] AS
SELECT DISTINCT cal.calendar_dt_sk_id, COGS_OUT.fiscal_year_nbr, COGS_OUT.fiscal_week_nbr, COGS_OUT.cogs_amt
FROM            
(
SELECT CONVERT(int, SUBSTRING(trim(year_title), 1, 4)) AS fiscal_year_nbr, CONVERT(int, REPLACE(trim(week_title), 'Week', '')) AS fiscal_week_nbr, Sum(Convert(Decimal(11,2),cogs_amt)) as cogs_amt
FROM sho_staging.finance.week_fmt_div_outlet_cogs_stg 
GROUP BY CONVERT(int, SUBSTRING(trim(year_title), 1, 4)), CONVERT(int, REPLACE(trim(week_title), 'Week', ''))
)
AS COGS_OUT 
INNER JOIN
dim.calendar AS cal ON cal.fiscal_year_nbr = COGS_OUT.fiscal_year_nbr AND cal.fiscal_week_nbr = COGS_OUT.fiscal_week_nbr 





GO

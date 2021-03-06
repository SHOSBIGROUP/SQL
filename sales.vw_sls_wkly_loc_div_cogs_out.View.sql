USE [sho_dw]
GO
/****** Object:  View [sales].[vw_sls_wkly_loc_div_cogs_out]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP VIEW [sales].[vw_sls_wkly_loc_div_cogs_out]
GO
/****** Object:  View [sales].[vw_sls_wkly_loc_div_cogs_out]    Script Date: 10/26/2018 4:01:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [sales].[vw_sls_wkly_loc_div_cogs_out]
AS
SELECT DISTINCT cal.calendar_dt_sk_id, COGS_OUT.div_nbr, COGS_OUT.fiscal_year_nbr, COGS_OUT.fiscal_week_nbr, CONVERT(decimal(11, 2), COGS_OUT.cogs_amt) AS cogs_amt
FROM            (SELECT        CONVERT(int, SUBSTRING(trim(year_title), 1, 4)) AS fiscal_year_nbr, CONVERT(int, REPLACE(trim(week_title), 'Week', '')) AS fiscal_week_nbr, CONVERT(int, CONVERT(char(3), trim(SUBSTRING(div_title, 
                                                    CHARINDEX('(', div_title) + 1, 4)))) AS div_nbr, cogs_amt
                          FROM            sho_staging.finance.week_fmt_div_outlet_cogs_stg
                          WHERE        (essbase_pull_title = 'Total COGS') AND (div_title LIKE '%(%)%')) AS COGS_OUT INNER JOIN
                         dim.calendar AS cal ON cal.fiscal_year_nbr = COGS_OUT.fiscal_year_nbr AND cal.fiscal_week_nbr = COGS_OUT.fiscal_week_nbr
GO

USE [sho_dw]
GO
/****** Object:  View [sales].[vw_sls_wkly_loc_div_cogs_hhh]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP VIEW [sales].[vw_sls_wkly_loc_div_cogs_hhh]
GO
/****** Object:  View [sales].[vw_sls_wkly_loc_div_cogs_hhh]    Script Date: 11/13/2018 3:54:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [sales].[vw_sls_wkly_loc_div_cogs_hhh]
AS
SELECT DISTINCT l.location_sk_id, cal.calendar_dt_sk_id, COGS_HHH.div_nbr, COGS_HHH.fiscal_year_nbr, COGS_HHH.fiscal_week_nbr, CONVERT(decimal(11, 2), COGS_HHH.cogs_amt) AS cogs_amt
FROM            dim.location AS l INNER JOIN
                             (SELECT        CONVERT(int, SUBSTRING(trim(year_title), 1, 4)) AS fiscal_year_nbr, CONVERT(int, REPLACE(trim(week_title), 'Week', '')) AS fiscal_week_nbr, CONVERT(int, LEFT(RIGHT(REPLACE(loc_title, 
                                                         'Hometown & Hardware Total', 're Total'), LEN(REPLACE(loc_title, 'Hometown & Hardware Total', 're Total')) - 8), 5)) AS eis_nbr, CONVERT(char(3), trim(SUBSTRING(div_title, CHARINDEX('(', div_title) + 1, 4))) 
                                                         AS div_nbr, cogs_amt
                               FROM            sho_staging.finance.week_loc_div_3h_cogs_stg) AS COGS_HHH ON l.eis_nbr = COGS_HHH.eis_nbr INNER JOIN
                         dim.calendar AS cal ON cal.fiscal_year_nbr = COGS_HHH.fiscal_year_nbr AND cal.fiscal_week_nbr = COGS_HHH.fiscal_week_nbr
GO

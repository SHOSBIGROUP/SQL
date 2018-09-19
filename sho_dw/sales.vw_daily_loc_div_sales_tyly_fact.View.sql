---------------------------------------------------------------------------
-- !!DEPRECATED!!
-- Please refer to new view "vw_sales_by_fmt_div" instead
---------------------------------------------------------------------------


/****** Object:  View [sales].[vw_daily_loc_div_sales_tyly_fact]    Script Date: 9/7/2018 1:56:16 PM ******/
DROP VIEW [sales].[vw_daily_loc_div_sales_tyly_fact]
GO
/****** Object:  View [sales].[vw_daily_loc_div_sales_tyly_fact]    Script Date: 9/7/2018 1:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--drop view [sales].[vw_daily_loc_div_sales_tyly_fact]


create view [sales].[vw_daily_loc_div_sales_tyly_fact]
as
SELECT        cd.calendar_dt AS trs_dt, cd.fiscal_week_nbr, cd.fiscal_month_nbr, cd.fiscal_month_name, cd.fiscal_year_nbr, md.cat_nbr, md.cat_nm, md.div_nbr, md.div_nm, sf_ty.location_sk_id, sf_ty.prod_cat_div_sk_id, sf_ty.trs_dt_sk_id, 
                         ld.pos_nbr, ld.eis_nbr, ld.location_name, ld.location_format, ld.location_type, ld.operator_type, ld.district, ld.region, ld.open_dt, ld.close_dt, COALESCE (sf_ty.net_sales, 0) AS net_sales, COALESCE (sf_ly.net_sales, 0) 
                         AS net_sales_ly, CASE WHEN cd.comparable_last_year_calendar_dt >= ld.open_dt THEN sf_ty.net_sales ELSE 0 END AS comp_sales, 
                         CASE WHEN cd.calendar_dt <= ld.close_dt THEN sf_ly.net_sales ELSE 0 END AS comp_sales_ly, COALESCE (sf_ty.net_units, 0) AS net_units, COALESCE (sf_ly.net_units, 0) AS net_units_ly, COALESCE (sf_ty.kenmore_sales, 0) 
                         AS kenmore_sales, COALESCE (sf_ly.kenmore_sales, 0) AS kenmore_sales_ly, COALESCE (sf_ty.total_md_amt, 0) AS total_md_amt, COALESCE (sf_ly.total_md_amt, 0) AS total_md_amt_ly, COALESCE (sf_ty.craftsman_sales, 0) 
                         AS craftsman_sales, COALESCE (sf_ly.craftsman_sales, 0) AS craftsman_sales_ly, COALESCE (sf_ty.pa_sales, 0) AS pa_sales, COALESCE (sf_ly.pa_sales, 0) AS pa_sales_ly, COALESCE (sf_ty.pa_units, 0) AS pa_units, 
                         COALESCE (sf_ly.pa_units, 0) AS pa_units_ly, COALESCE (sf_ty.pam_sales, 0) AS pam_sales, COALESCE (sf_ly.pam_sales, 0) AS pam_sales_ly, COALESCE (sf_ty.pam_units, 0) AS pam_units, COALESCE (sf_ly.pam_units, 0) 
                         AS pam_units_ly, COALESCE (sf_ty.lease_sales, 0) AS lease_sales, COALESCE (sf_ly.lease_sales, 0) AS lease_sales_ly, COALESCE (sf_ty.avg_ticket_amt, 0) AS avg_ticket_amt, COALESCE (sf_ty.avg_ticket_units, 0) 
                         AS avg_ticket_units, COALESCE (sf_ly.avg_ticket_amt, 0) AS avg_ticket_amt_ly, COALESCE (sf_ly.avg_ticket_units, 0) AS avg_ticket_units_ly, COALESCE (sf_ty.plan_amt, 0) AS plan_amt, COALESCE (sf_ty.forecast_amt, 0) 
                         AS forecast_amt, COALESCE (sf_ly.plan_amt, 0) AS plan_amt_ly, COALESCE (sf_ly.forecast_amt, 0) AS forecast_amt_ly
FROM            sales.vw_sales_by_fmt_div AS sf_ty INNER JOIN
                         dim.calendar AS cd ON sf_ty.trs_dt_sk_id = cd.calendar_dt_sk_id LEFT OUTER JOIN
                         sales.vw_sales_by_fmt_div AS sf_ly ON sf_ly.trs_dt_sk_id = cd.comparable_last_year_calendar_dt_sk_id AND sf_ty.location_sk_id = sf_ly.location_sk_id AND 
                         sf_ty.prod_cat_div_sk_id = sf_ly.prod_cat_div_sk_id LEFT OUTER JOIN
                         dbo.product_cat_div_hierarchy_dim AS md ON sf_ty.prod_cat_div_sk_id = md.cat_div_sk_id LEFT OUTER JOIN
                         dim.location AS ld ON sf_ty.location_sk_id = ld.location_sk_id
GO

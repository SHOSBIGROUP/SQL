USE [sho_dw]
GO

/****** Object:  View [sales].[vw_daily_fmt_div_sales_tyly_fact]    Script Date: 9/27/2018 8:45:44 AM ******/
DROP VIEW [sales].[vw_daily_fmt_div_sales_tyly_fact]
GO

/****** Object:  View [sales].[vw_daily_fmt_div_sales_tyly_fact]    Script Date: 9/27/2018 8:45:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [sales].[vw_daily_fmt_div_sales_tyly_fact]
AS  
SELECT        	fd.sho_location_format_sk_id, 
				sf_ty.trs_dt_sk_id, 
				sf_ty.prod_cat_div_sk_id, 
				sf_ty.trs_dt, 
				cd.fiscal_year_nbr,
				cd.fiscal_month_nbr,
				cd.fiscal_week_nbr,
				sf_ty.pos_source_system, 
				fd.store_group_name, 
				fd.store_supergroup_name, 
				fd.location_format_name,
                fd.location_format_manager, 
				ld.operator_type,
				dd.div_nbr, 
				dd.div_name,
				dd.cat_nbr, 
				dd.cat_name,
				sum(CASE WHEN cd.comparable_last_year_calendar_dt >= ld.open_dt THEN coalesce(sf_ty.net_sales,0) ELSE 0 END) AS comp_sales, 
				sum(CASE WHEN cd.calendar_dt <= ld.close_dt THEN coalesce(sf_ly.net_sales,0) ELSE 0 END) AS comp_sales_ly, 
				SUM(COALESCE(sf_ty.net_sales, 0)) AS net_sales, 
				SUM(COALESCE(sf_ty.net_units, 0)) AS net_units, 
				SUM(COALESCE(sf_ty.kenmore_sales, 0)) AS kenmore_sales, 
				SUM(COALESCE(sf_ty.kenmore_units, 0)) AS kenmore_units, 
				SUM(COALESCE(sf_ty.total_md_amt, 0)) AS total_md_amt, 
                SUM(COALESCE(sf_ty.craftsman_sales, 0)) AS craftsman_sales, 
				SUM(COALESCE(sf_ty.craftsman_units, 0)) AS craftsman_units, 
				SUM(COALESCE(sf_ty.diehard_sales, 0)) AS diehard_sales, 
				SUM(COALESCE(sf_ty.diehard_units, 0)) AS diehard_units, 
				SUM(COALESCE(sf_ty.guardsman_sales, 0)) AS guardsman_sales, 
				SUM(COALESCE(sf_ty.guardsman_units, 0)) AS guardsman_units, 
				SUM(COALESCE(sf_ty.avg_ticket_amt, 0)) AS avg_ticket_amt, 
				SUM(COALESCE(sf_ty.avg_ticket_units, 0)) AS avg_ticket_units, 
				SUM(COALESCE(sf_ty.pa_sales, 0)) AS pa_sales, 
				SUM(COALESCE(sf_ty.pa_units, 0)) AS pa_units, 
				SUM(COALESCE(sf_ty.lease_sales, 0)) AS lease_sales, 
				SUM(COALESCE(sf_ty.lease_units, 0)) AS lease_units, 
				SUM(COALESCE(sf_ty.pam_sales, 0)) AS pam_sales, 
				SUM(COALESCE(sf_ty.pam_units, 0)) AS pam_units,
				SUM(COALESCE(sf_ly.net_sales, 0)) AS net_sales_ly, 
				SUM(COALESCE(sf_ly.net_units, 0)) AS net_units_ly, 
				SUM(COALESCE(sf_ly.kenmore_sales, 0)) AS kenmore_sales_ly, 
				SUM(COALESCE(sf_ly.kenmore_units, 0)) AS kenmore_units_ly, 
				SUM(COALESCE(sf_ly.total_md_amt, 0)) AS total_md_amt_ly, 
                SUM(COALESCE(sf_ly.craftsman_sales, 0)) AS craftsman_sales_ly, 
				SUM(COALESCE(sf_ly.craftsman_units, 0)) AS craftsman_units_ly, 
				SUM(COALESCE(sf_ly.diehard_sales, 0)) AS diehard_sales_ly, 
				SUM(COALESCE(sf_ly.diehard_units, 0)) AS diehard_units_ly, 
				SUM(COALESCE(sf_ly.guardsman_sales, 0)) AS guardsman_sales_ly, 
				SUM(COALESCE(sf_ly.guardsman_units, 0)) AS guardsman_units_ly, 
				SUM(COALESCE(sf_ly.avg_ticket_amt, 0)) AS avg_ticket_amt_ly, 
				SUM(COALESCE(sf_ly.avg_ticket_units, 0)) AS avg_ticket_units_ly, 
				SUM(COALESCE(sf_ly.pa_sales, 0)) AS pa_sales_ly, 
				SUM(COALESCE(sf_ly.pa_units, 0)) AS pa_units_ly, 
				SUM(COALESCE(sf_ly.lease_sales, 0)) AS lease_sales_ly, 
				SUM(COALESCE(sf_ly.lease_units, 0)) AS lease_units_ly, 
				SUM(COALESCE(sf_ly.pam_sales, 0)) AS pam_sales_ly, 
				SUM(COALESCE(sf_ly.pam_units, 0)) AS pam_units_ly,
				sum(0) as gp_sales,
				sum(0) as gp_sales_ly,
				sum(0) as plan_amt,
				sum(0) as plan_amt_ly,
				sum(0) as forecast_amt
				


FROM            fact.sho_sales sf_ty
					INNER JOIN dim.location ld ON sf_ty.location_sk_id = ld.location_sk_id 
					INNER JOIN dim.sho_location_formats fd ON ld.sho_location_format_sk_id = fd.sho_location_format_sk_id
					INNER JOIN dim.category_division dd ON sf_ty.prod_cat_div_sk_id = dd.cat_div_sk_id
					INNER JOIN dim.calendar cd ON sf_ty.trs_dt_sk_id = cd.calendar_dt_sk_id
					
					LEFT OUTER JOIN fact.sho_sales sf_ly ON sf_ty.location_sk_id = sf_ly.location_sk_id
														AND sf_ty.prod_cat_div_sk_id = sf_ly.prod_cat_div_sk_id
														AND sf_ty.trs_dt_sk_id = sf_ly.trs_dt_sk_id
					

GROUP BY 		fd.sho_location_format_sk_id, 
				sf_ty.trs_dt_sk_id, 
				sf_ty.prod_cat_div_sk_id, 
				sf_ty.trs_dt,
				cd.fiscal_year_nbr,
				cd.fiscal_month_nbr,
				cd.fiscal_week_nbr,
				sf_ty.pos_source_system, 
				fd.store_group_name, 
				fd.store_supergroup_name, 
				fd.location_format_name,
                fd.location_format_manager, 
				ld.operator_type,
				dd.div_nbr, 
				dd.div_name,
				dd.cat_nbr, 
				dd.cat_name

GO



USE [sho_dw]
GO
/****** Object:  View [sales].[vw_weekly_loc_ordc_scorecard]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP VIEW [sales].[vw_weekly_loc_ordc_scorecard]
GO
/****** Object:  View [sales].[vw_weekly_loc_ordc_scorecard]    Script Date: 11/13/2018 3:54:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [sales].[vw_weekly_loc_ordc_scorecard] 
AS
SELECT
	Q1.fiscal_week_nbr, 
	Q1.fiscal_month_nbr, 
	Q1.fiscal_month_name, 
	Q1.fiscal_year_nbr, 
	Q1.location_sk_id, 
	Q1.location_format_cd,
	Q1.location_format_name,
	Q1.location_format_manager,
	Q1.store_supergroup_name,
	Q1.store_group_name,
	Q1.pos_nbr, 
	Q1.eis_nbr, 
	Q1.location_name ,
	Q1.location_format, 
	Q1.region, 
	Q1.region_title,
	Q1.region_mgr,
	Q1.district, 
	Q1.district_title,
	Q1.district_manager,
	Q1.open_dt, 
	Q1.close_dt, 
	sum(Q1.net_sales) AS net_sales, 
	sum(Q1.net_units) AS net_units,
	sum(Q1.plan_sales) AS plan_sales, 
	sum(Q1.forecast_sales) AS forecast_sales
	
FROM (
	-- Bring in TY Sales Facts
	SELECT        			cd.calendar_dt AS trs_dt, 
							cd.fiscal_week_nbr, 
							cd.fiscal_month_nbr, 
							cd.fiscal_month_name, 
							cd.fiscal_year_nbr, 
							ld.location_sk_id, 
							cd.calendar_dt_sk_id, 
							lf.location_format_cd,
							lf.location_format_name,
							lf.location_format_manager,
							lf.store_supergroup_name,
							lf.store_group_name,
							ld.pos_nbr, 
							ld.eis_nbr, 
							concat(ld.pos_nbr,' - ',ld.city,', ',ld.state) as location_name ,
							lf.location_format_cd as location_format, 
							ld.location_type, 
							ld.operator_type, 
							ld.region, 
							concat(lr.region_nbr,' - ',lr.region_name) as region_title,
							lr.region_mgr,
							ld.district, 
							concat(lds.district_nbr,' - ',lds.district_name) as district_title,
							lds.district_manager,
							ld.open_dt, 
							ld.close_dt, 
							COALESCE (sf_ty.net_sales, 0) AS net_sales, 
							coalesce (sf_ty.net_units, 0) as net_units,
							0 as plan_sales, --
							0 as forecast_sales --
		
	FROM            fact.sho_sales_by_loc AS sf_ty 
							INNER JOIN dim.calendar AS cd ON sf_ty.trs_dt_sk_id = cd.calendar_dt_sk_id 
							INNER JOIN dim.location AS ld ON sf_ty.location_sk_id = ld.location_sk_id 
							   INNER JOIN dim.district lds ON ld.district_sk_id = lds.district_sk_id
								INNER JOIN dim.region lr ON ld.region_sk_id = lr.region_sk_id
								INNER JOIN dim.sho_location_formats lf ON lr.sho_location_format_sk_id = lf.sho_location_format_sk_id 
								WHERE cd.calendar_dt < GETDATE() - 1 
								AND lr.inactive = 0 and  lds.inactive = 0
	-- Bring in Plan Facts
	UNION ALL
	SELECT        			cd.calendar_dt AS trs_dt, 
							cd.fiscal_week_nbr, 
							cd.fiscal_month_nbr, 
							cd.fiscal_month_name, 
							cd.fiscal_year_nbr, 
							ld.location_sk_id, 
							cd.calendar_dt_sk_id, 
							lf.location_format_cd,
							lf.location_format_name,
							lf.location_format_manager,
							lf.store_supergroup_name,
							lf.store_group_name,
							ld.pos_nbr, 
							ld.eis_nbr, 
							concat(ld.pos_nbr,' - ',ld.city,', ',ld.state) as location_name ,
							lf.location_format_cd as location_format, 
							ld.location_type, 
							ld.operator_type, 
							ld.region, 
							concat(lr.region_nbr,' - ',lr.region_name) as region_title,
							lr.region_mgr,
							ld.district, 
							concat(lds.district_nbr,' - ',lds.district_name) as district_title,
							lds.district_manager,
							ld.open_dt, 
							ld.close_dt, 
							0 AS net_sales, 
							0 AS net_units, 
							sp_ty.sales_plan_amt as plan_sales, 
							sp_ty.sales_plan_amt as forecast_sales
	FROM            		fact.sho_sales_plan_gp_by_loc sp_ty
							INNER JOIN dim.calendar AS cd ON sp_ty.plan_dt_sk_id = cd.calendar_dt_sk_id
							INNER JOIN dim.location AS ld ON sp_ty.sho_location_sk_id = ld.location_sk_id 
							   INNER JOIN dim.district lds ON ld.district_sk_id = lds.district_sk_id
								INNER JOIN dim.region lr ON ld.region_sk_id = lr.region_sk_id
								INNER JOIN dim.sho_location_formats lf ON lr.sho_location_format_sk_id = lf.sho_location_format_sk_id
								WHERE cd.calendar_dt < GETDATE() - 1
								AND lr.inactive = 0 and  lds.inactive = 0


) Q1
GROUP BY
	Q1.fiscal_week_nbr, 
	Q1.fiscal_month_nbr, 
	Q1.fiscal_month_name, 
	Q1.fiscal_year_nbr, 
	Q1.location_sk_id, 
	Q1.location_format_cd,
	Q1.location_format_name,
	Q1.location_format_manager,
	Q1.store_supergroup_name,
	Q1.store_group_name,
	Q1.pos_nbr, 
	Q1.eis_nbr, 
	Q1.location_name ,
	Q1.location_format, 
	Q1.location_type, 
	Q1.operator_type, 
	Q1.region, 
	Q1.region_title,
	Q1.region_mgr,
	Q1.district, 
	Q1.district_title,
	Q1.district_manager,
	Q1.open_dt, 
	Q1.close_dt 
	HAVING SUM(Q1.net_sales) > 0 or SUM(Q1.plan_sales) > 0


GO

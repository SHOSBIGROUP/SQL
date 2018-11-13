USE [sho_dw]
GO
/****** Object:  View [sales].[vw_daily_loc_sales_tyly_fact_ns]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP VIEW [sales].[vw_daily_loc_sales_tyly_fact_ns]
GO
/****** Object:  View [sales].[vw_daily_loc_sales_tyly_fact_ns]    Script Date: 11/13/2018 3:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--drop view [sales].[vw_daily_loc_sales_tyly_fact_ns]



CREATE VIEW [sales].[vw_daily_loc_sales_tyly_fact_ns] 
AS
SELECT
	Q1.trs_dt, 
	Q1.fiscal_week_nbr, 
	Q1.fiscal_month_nbr, 
	Q1.fiscal_month_name, 
	Q1.fiscal_year_nbr, 
	Q1.location_sk_id, 
	Q1.calendar_dt_sk_id,
	Q1.sho_location_format_sk_id,
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
	Q1.region_sk_id,
	Q1.region, 
	Q1.region_title,
	Q1.region_mgr,
	Q1.district_sk_id,
	Q1.district, 
	Q1.district_title,
	Q1.district_manager,
	Q1.open_dt, 
	Q1.close_dt, 
	sum(Q1.net_sales) AS net_sales, 
	sum(Q1.net_units) AS net_units,
	sum(Q1.plan_sales) AS plan_amt, 
	sum(Q1.forecast_sales) AS forecast_amt, 
	SUM(Q1.gross_profit) AS gross_profit, 
	SUM(Q1.comp_sales) AS comp_sales, 
	SUM(Q1.pa_sales) AS pa_sales, 
	SUM(Q1.pa_units) AS pa_units, 
	SUM(Q1.pam_sales) AS pam_sales, 
	SUM(Q1.pam_units) AS pam_units, 
	SUM(Q1.lease_sales) AS lease_sales, 
	SUM(Q1.lease_comp_sales) AS lease_comp_sales,
	SUM(Q1.ha_sales) AS ha_sales, 
	SUM(Q1.ha_units) AS ha_units, 
	SUM(Q1.sears_credit_sales) AS sears_credit_sales, 
	SUM(Q1.other_credit_sales) AS other_credit_sales, 
	SUM(Q1.bulk_sales) AS bulk_sales, 
	SUM(Q1.bulk_units) AS bulk_units, 
	SUM(Q1.spp_sales) AS spp_sales, 
	SUM(Q1.spp_merch_sales) AS spp_merch_sales, 
	SUM(Q1.gp_plan_amt) AS gp_plan_amt, 
	SUM(Q1.gp_forecast_amt) AS gp_forecast_amt, 
	SUM(Q1.net_sales_ly) AS net_sales_ly, 
	SUM(Q1.gross_profit_ly) AS gross_profit_ly, 
	SUM(Q1.plan_sales_ly) AS plan_amt_ly,
	SUM(Q1.forecast_sales_ly) AS forecast_amt_ly,
	SUM(Q1.comp_sales_ly) AS comp_sales_ly, 
	SUM(Q1.net_units_ly) AS net_units_ly, 
	SUM(Q1.pa_sales_ly) AS pa_sales_ly, 
	SUM(Q1.pa_units_ly) AS pa_units_ly, 
	SUM(Q1.pam_sales_ly) AS pam_sales_ly, 
	SUM(Q1.pam_units_ly) AS pam_units_ly, 
	SUM(Q1.lease_sales_ly) AS lease_sales_ly, 
	SUM(Q1.lease_units_ly) AS lease_units_ly, 
	SUM(Q1.lease_comp_sales_ly) AS lease_comp_sales_ly,
	SUM(Q1.ha_sales_ly) AS ha_sales_ly, 
	SUM(Q1.ha_units_ly) AS ha_units_ly,
	SUM(Q1.sears_credit_sales_ly) AS sears_credit_sales_ly,
	SUM(Q1.other_credit_sales_ly) AS other_credit_sales_ly,
	SUM(Q1.bulk_sales_ly) AS bulk_sales_ly,
	SUM(Q1.bulk_units_ly) AS bulk_units_ly,
	SUM(Q1.spp_sales_ly) AS spp_sales_ly,
	SUM(Q1.spp_merch_sales_ly) AS spp_merch_sales_ly,		
	SUM(Q1.gp_plan_amt_ly) AS gp_plan_amt_ly,
	SUM(Q1.gp_forecast_amt_ly) as gp_forecast_amt_ly

FROM (
	-- Bring in TY Sales Facts
	SELECT        			cd.calendar_dt AS trs_dt, 
							cd.fiscal_week_nbr, 
							cd.fiscal_month_nbr, 
							cd.fiscal_month_name, 
							cd.fiscal_year_nbr, 
							ld.location_sk_id, 
							cd.calendar_dt_sk_id, 
							lf.sho_location_format_sk_id,
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
							lr.region_sk_id,
							lr.region_nbr as region, 
							concat(lr.region_nbr,' - ',lr.region_name) as region_title,
							lr.region_mgr,
							lds.district_sk_id,
							lds.district_nbr as district, 
							concat(lds.district_nbr,' - ',lds.district_name) as district_title,
							lds.district_manager,
							ld.open_dt, 
							ld.close_dt, 
							COALESCE (sf_ty.net_sales, 0) AS net_sales, 
							coalesce (sf_ty.net_units, 0) as net_units,
							0 as plan_sales, --
							0 as forecast_sales, --
							COALESCE (sf_ty.gross_profit, 0) AS gross_profit, 
							CASE WHEN cd.comparable_last_year_calendar_dt >= ld.open_dt THEN sf_ty.net_sales ELSE 0 END AS comp_sales, 
							COALESCE (sf_ty.pa_sales, 0) AS pa_sales, 
							COALESCE (sf_ty.pa_units, 0) AS pa_units, 
							COALESCE (sf_ty.pam_sales, 0) AS pam_sales, 
							COALESCE (sf_ty.pam_units, 0) AS pam_units, 
							COALESCE (sf_ty.lease_sales, 0) AS lease_sales, 
							COALESCE (sf_ty.lease_units, 0) AS lease_units, 
							CASE WHEN cd.comparable_last_year_calendar_dt >= ld.open_dt THEN sf_ty.lease_sales ELSE 0 END AS lease_comp_sales,
							COALESCE (sf_ty.avg_ticket_sales, 0) AS ha_sales, 
							COALESCE (sf_ty.avg_ticket_units, 0) AS ha_units, 
							COALESCE (sf_ty.sears_credit_sales, 0) AS sears_credit_sales, 
							COALESCE (sf_ty.other_credit_sales, 0) AS other_credit_sales, 
							COALESCE (sf_ty.bulk_sales, 0) AS bulk_sales, 
							COALESCE (sf_ty.bulk_units, 0) AS bulk_units, 
							COALESCE (sf_ty.spp_sales, 0) AS spp_sales, 
							COALESCE (sf_ty.spp_merch_sales, 0) AS spp_merch_sales, 
							0 as gp_plan_amt, --
							0 as gp_forecast_amt, --
							0 AS net_sales_ly, 
							0 AS gross_profit_ly, 
							0 as plan_sales_ly,
							0 as forecast_sales_ly,
							0 AS comp_sales_ly, 
							0 AS net_units_ly, 
							0 AS pa_sales_ly, 
							0 AS pa_units_ly, 
							0 AS pam_sales_ly, 
							0 AS pam_units_ly, 
							0 AS lease_sales_ly, 
							0 AS lease_units_ly, 
							0 AS lease_comp_sales_ly,
							0 AS ha_sales_ly, 
							0 AS ha_units_ly,
							0 AS sears_credit_sales_ly,
							0 AS other_credit_sales_ly,
							0 AS bulk_sales_ly,
							0 AS bulk_units_ly,
							0 AS spp_sales_ly,
							0 AS spp_merch_sales_ly,		
							0 as gp_plan_amt_ly,
							0 as gp_forecast_amt_ly	

	FROM            fact.sho_sales_by_loc AS sf_ty 
							INNER JOIN dim.calendar AS cd ON sf_ty.trs_dt_sk_id = cd.calendar_dt_sk_id 
							INNER JOIN dim.location AS ld ON sf_ty.location_sk_id = ld.location_sk_id 
							   INNER JOIN dim.district lds ON ld.district_sk_id = lds.district_sk_id
								INNER JOIN dim.region lr ON ld.region_sk_id = lr.region_sk_id
								INNER JOIN dim.sho_location_formats lf ON lr.sho_location_format_sk_id = lf.sho_location_format_sk_id 
								WHERE cd.calendar_dt < GETDATE() - 1 
								AND lr.inactive = 0 and  lds.inactive = 0
								AND sf_ty.pos_source_system='N'

	-- Bring in LY Sales Facts
	UNION ALL
	SELECT        			cd.calendar_dt AS trs_dt, 
							cd.fiscal_week_nbr, 
							cd.fiscal_month_nbr, 
							cd.fiscal_month_name, 
							cd.fiscal_year_nbr, 
							ld.location_sk_id, 
							cd.calendar_dt_sk_id, 
							lf.sho_location_format_sk_id,
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
							lr.region_sk_id,
							lr.region_nbr as region, 
							concat(lr.region_nbr,' - ',lr.region_name) as region_title,
							lr.region_mgr,
							lds.district_sk_id,
							lds.district_nbr as district, 
							concat(lds.district_nbr,' - ',lds.district_name) as district_title,
							lds.district_manager,
							ld.open_dt, 
							ld.close_dt, 
							0 AS net_sales, 
							0 AS net_units, 
							0 as plan_sales,
							0 as forecast_sales,
							0 AS gross_profit, 
							0 AS comp_sales, 
							0 AS pa_sales, 
							0 AS pa_units, 
							0 AS pam_sales, 
							0 AS pam_units, 
							0 AS lease_sales, 
							0 AS lease_units, 
							0 AS lease_comp_sales,
							0 AS ha_sales, 
							0 AS ha_units, 
							0 AS sears_credit_sales, 
							0 AS other_credit_sales, 
							0 AS bulk_sales, 
							0 AS bulk_units, 
							0 AS spp_sales, 
							0 AS spp_merch_sales, 
							0 as gp_plan_amt,
							0 as gp_forecast_amt,
							COALESCE (sf_ly.net_sales, 0) AS net_sales_ly, 
							COALESCE (sf_ly.gross_profit, 0) AS gross_profit_ly, 
							0 as plan_sales_ly,
							0 as forecast_sales_ly,
							CASE WHEN cd.calendar_dt <= ld.close_dt or ld.close_dt = '1900-01-01' THEN sf_ly.net_sales ELSE 0 END AS comp_sales_ly, 
							COALESCE (sf_ly.net_units, 0) AS net_units_ly, 
							COALESCE (sf_ly.pa_sales, 0) AS pa_sales_ly, 
							COALESCE (sf_ly.pa_units, 0) AS pa_units_ly, 
							COALESCE (sf_ly.pam_sales, 0) AS pam_sales_ly, 
							COALESCE (sf_ly.pam_units, 0) AS pam_units_ly, 
							COALESCE (sf_ly.lease_sales, 0) AS lease_sales_ly, 
							COALESCE (sf_ly.lease_units, 0) AS lease_units_ly, 
							CASE WHEN cd.calendar_dt <= ld.close_dt or ld.close_dt = '1900-01-01' THEN sf_ly.lease_sales ELSE 0 END AS lease_comp_sales_ly, 
							COALESCE (sf_ly.avg_ticket_sales, 0) AS ha_sales_ly, 
							COALESCE (sf_ly.avg_ticket_units, 0) AS ha_units_ly,
							COALESCE (sf_ly.sears_credit_sales, 0) AS sears_credit_sales_ly,
							COALESCE (sf_ly.other_credit_sales, 0) AS other_credit_sales_ly,
							COALESCE (sf_ly.bulk_sales, 0) AS bulk_sales_ly,
							COALESCE (sf_ly.bulk_units, 0) AS bulk_units_ly,
							COALESCE (sf_ly.spp_sales, 0) AS spp_sales_ly,
							COALESCE (sf_ly.spp_merch_sales, 0) AS spp_merch_sales_ly,
							0 as gp_plan_amt_ly,
							0 as gp_forecast_amt_ly
							 
	FROM            fact.sho_sales_by_loc AS sf_ly 
							INNER JOIN dim.calendar AS cd ON sf_ly.trs_dt_sk_id = cd.comparable_last_year_calendar_dt_sk_id
							INNER JOIN dim.location AS ld ON sf_ly.location_sk_id = ld.location_sk_id 
							   INNER JOIN dim.district lds ON ld.district_sk_id = lds.district_sk_id
								INNER JOIN dim.region lr ON ld.region_sk_id = lr.region_sk_id
								INNER JOIN dim.sho_location_formats lf ON lr.sho_location_format_sk_id = lf.sho_location_format_sk_id 
								WHERE cd.calendar_dt < GETDATE() - 1
								AND lr.inactive = 0 and  lds.inactive = 0
								and  eis_nbr in (9112,4001,7820)  and trs_dt between '2017-11-12' and '2018-02-04'


	-- Bring in Plan Facts
	UNION ALL
	SELECT        			cd.calendar_dt AS trs_dt, 
							cd.fiscal_week_nbr, 
							cd.fiscal_month_nbr, 
							cd.fiscal_month_name, 
							cd.fiscal_year_nbr, 
							ld.location_sk_id, 
							cd.calendar_dt_sk_id, 
							lf.sho_location_format_sk_id,
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
							lr.region_sk_id,
							lr.region_nbr as region, 
							concat(lr.region_nbr,' - ',lr.region_name) as region_title,
							lr.region_mgr,
							lds.district_sk_id,
							lds.district_nbr as district, 
							concat(lds.district_nbr,' - ',lds.district_name) as district_title,
							lds.district_manager,
							ld.open_dt, 
							ld.close_dt, 
							0 AS net_sales, 
							0 AS net_units, 
							sp_ty.sales_plan_amt as plan_sales, 
							sp_ty.sales_plan_amt as forecast_sales, 
							0 AS gross_profit, 
							0 AS comp_sales, 
							0 AS pa_sales, 
							0 AS pa_units, 
							0 AS pam_sales, 
							0 AS pam_units, 
							0 AS lease_sales, 
							0 AS lease_units, 
							0 AS lease_comp_sales,
							0 AS ha_sales, 
							0 AS ha_units, 
							0 AS sears_credit_sales, 
							0 AS other_credit_sales, 
							0 AS bulk_sales, 
							0 AS bulk_units, 
							0 AS spp_sales, 
							0 AS spp_merch_sales, 
							sp_ty.gp_plan_amt as gp_plan_amt, --
							sp_ty.gp_plan_amt as gp_forecast_amt, --
							0 AS net_sales_ly, 
							0 AS gross_profit_ly, 
							0 as plan_sales_ly,
							0 as forecast_sales_ly,
							0 AS comp_sales_ly, 
							0 AS net_units_ly, 
							0 AS pa_sales_ly, 
							0 AS pa_units_ly, 
							0 AS pam_sales_ly, 
							0 AS pam_units_ly, 
							0 AS lease_sales_ly, 
							0 AS lease_units_ly, 
							0 AS lease_comp_sales_ly, 
							0 AS ha_sales_ly, 
							0 AS ha_units_ly,
							0 AS sears_credit_sales_ly,
							0 AS other_credit_sales_ly,
							0 AS bulk_sales_ly,
							0 AS bulk_units_ly,
							0 AS spp_sales_ly,
							0 AS spp_merch_sales_ly,
							0 AS gp_plan_amt_ly,
							0 AS gp_forecast_amt_ly
							 
	FROM            		fact.sho_sales_plan_gp_by_loc sp_ty
							INNER JOIN dim.calendar AS cd ON sp_ty.plan_dt_sk_id = cd.calendar_dt_sk_id
							INNER JOIN dim.location AS ld ON sp_ty.sho_location_sk_id = ld.location_sk_id 
							   INNER JOIN dim.district lds ON ld.district_sk_id = lds.district_sk_id
								INNER JOIN dim.region lr ON ld.region_sk_id = lr.region_sk_id
								INNER JOIN dim.sho_location_formats lf ON lr.sho_location_format_sk_id = lf.sho_location_format_sk_id
								WHERE cd.calendar_dt between '2018-11-12' and ( GETDATE() - 1)
								AND lr.inactive = 0 and  lds.inactive = 0
								AND    eis_nbr in (9112,4001,7820) 


) Q1
GROUP BY
	Q1.trs_dt, 
	Q1.fiscal_week_nbr, 
	Q1.fiscal_month_nbr, 
	Q1.fiscal_month_name, 
	Q1.fiscal_year_nbr, 
	Q1.location_sk_id, 
	Q1.calendar_dt_sk_id,
	Q1.sho_location_format_sk_id,	
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
	Q1.region_sk_id,
	Q1.region, 
	Q1.region_title,
	Q1.region_mgr,
	Q1.district_sk_id,
	Q1.district, 
	Q1.district_title,
	Q1.district_manager,
	Q1.open_dt, 
	Q1.close_dt

HAVING SUM(Q1.net_sales) > 0 or SUM(Q1.plan_sales) > 0




GO

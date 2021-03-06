USE [sho_dw]
GO
/****** Object:  View [sales].[vw_daily_loc_sales_tyly_fact_ns_new]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP VIEW [sales].[vw_daily_loc_sales_tyly_fact_ns_new]
GO
/****** Object:  View [sales].[vw_daily_loc_sales_tyly_fact_ns_new]    Script Date: 10/26/2018 4:01:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [sales].[vw_daily_loc_sales_tyly_fact_ns_new]
AS
SELECT        			cd.calendar_dt AS trs_dt, 
						cd.fiscal_week_nbr, 
						cd.fiscal_month_nbr, 
						cd.fiscal_month_name, 
						cd.fiscal_year_nbr, 
						ld.location_sk_id, 
						cd.calendar_dt_sk_id, 
                        lf.location_format_name,
						lf.location_format_manager,
						lf.store_supergroup_name,
						lf.store_group_name,
						ld.pos_nbr, 
						ld.eis_nbr, 
						ld.location_name, 
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
						COALESCE (sp_ty.sales_plan_amt, 0) as plan_sales,
						COALESCE (sp_ty.sales_plan_amt, 0) as forecast_sales,
						--COALESCE (sf_ty.gross_profit, 0) AS gross_profit, 
						COALESCE (sf_ty.kenmore_sales, 0) AS kenmore_sales, 
						COALESCE (sf_ty.total_md_amt, 0) AS total_md_amt, 
						CASE WHEN cd.comparable_last_year_calendar_dt >= ld.open_dt THEN sf_ty.net_sales ELSE 0 END AS comp_sales, 
						COALESCE (sf_ty.craftsman_sales, 0) AS craftsman_sales, 
						COALESCE (sf_ty.craftsman_units, 0) AS craftsman_units, 
						COALESCE (sf_ty.diehard_units, 0) AS diehard_units, 
						COALESCE (sf_ty.diehard_sales, 0) AS diehard_sales, 
						COALESCE (sf_ty.guardsman_sales, 0) AS guardsman_sales, 
						COALESCE (sf_ty.guardsman_units, 0) AS guardsman_units, 
						COALESCE (sf_ty.pa_sales, 0) AS pa_sales, 
						COALESCE (sf_ty.pa_units, 0) AS pa_units, 
						COALESCE (sf_ty.pam_sales, 0) AS pam_sales, 
						COALESCE (sf_ty.pam_units, 0) AS pam_units, 
						COALESCE (sf_ty.lease_sales, 0) AS lease_sales, 
						COALESCE (sf_ty.lease_units, 0) AS lease_units, 
						COALESCE (sf_ty.avg_ticket_sales, 0) AS avg_ticket_sales, 
						COALESCE (sf_ty.avg_ticket_units, 0) AS avg_ticket_units, 
						COALESCE (sf_ty.sears_credit_sales, 0) AS sears_credit_sales, 
						COALESCE (sf_ty.other_credit_sales, 0) AS other_credit_sales, 
						COALESCE (sf_ty.bulk_sales, 0) AS bulk_sales, 
						COALESCE (sf_ty.bulk_units, 0) AS bulk_units, 
						COALESCE (sf_ty.spp_sales, 0) AS spp_sales, 
						COALESCE (sf_ty.spp_merch_sales, 0) AS spp_merch_sales, 
						COALESCE (sp_ty.gp_plan_amt, 0) as gp_plan_amt,
						0 AS net_sales_ly, 
						0 AS gross_profit_ly, 
						0 as plan_sales_ly,
						0 as forecast_sales_ly,
                        0 AS comp_sales_ly, 
						0 AS net_units_ly, 
						0 AS kenmore_sales_ly, 
						0 AS total_md_amt_ly, 
						0 AS craftsman_sales_ly, 
						0 AS craftsman_units_ly, 
						0 AS diehard_sales_ly, 
						0 AS diehard_units_ly, 
						0 AS guardsman_sales_ly, 
						0 AS guardsman_units_ly, 
						0 AS pa_sales_ly, 
                        0 AS pa_units_ly, 
						0 AS pam_sales_ly, 
						0 AS pam_units_ly, 
						0 AS lease_sales_ly, 
						0 AS lease_units_ly, 
						0 AS avg_ticket_sales_ly, 
						0 AS avg_ticket_units_ly,
						0 AS sears_credit_sales_ly,
						0 AS other_credit_sales_ly,
						0 AS bulk_sales_ly,
						0 AS bulk_units_ly,
						0 AS spp_sales_ly,
						0 AS spp_merch_sales_ly,		
						0 AS plan_amt, 
						0 AS forecast_amt, 
						0 AS plan_amt_ly, 
						0 AS forecast_amt_ly,
						0 as gp_plan_amt_ly		
						
						 --plan/forecast metrics
						 --COALESCE (sf_ty.plan_amt, 0) AS plan_amt, 
						 --COALESCE (sf_ty.forecast_amt, 0) AS forecast_amt, 
						 --COALESCE (sf_ly.plan_amt, 0) AS plan_amt_ly, 
						 --COALESCE (sf_ly.forecast_amt, 0) AS forecast_amt_ly

FROM            fact.sho_sales_by_loc_ns AS sf_ty 
				LEFT OUTER JOIN fact.sho_sales_plan_gp_by_loc sp_ty ON sf_ty.location_sk_id = sp_ty.sho_location_sk_id and sf_ty.trs_dt_sk_id = sp_ty.plan_dt_sk_id
						INNER JOIN dim.calendar AS cd ON sf_ty.trs_dt_sk_id = cd.calendar_dt_sk_id 
						INNER JOIN dim.location AS ld ON sf_ty.location_sk_id = ld.location_sk_id 
							INNER JOIN dim.region lr ON ld.region_sk_id = lr.region_sk_id
							INNER JOIN dim.sho_location_formats lf ON lr.sho_location_format_sk_id = lf.sho_location_format_sk_id 
							INNER JOIN dim.district lds ON ld.district_sk_id = lds.district_sk_id

UNION ALL

SELECT        			cd.calendar_dt AS trs_dt, 
						cd.fiscal_week_nbr, 
						cd.fiscal_month_nbr, 
						cd.fiscal_month_name, 
						cd.fiscal_year_nbr, 
						ld.location_sk_id, 
						cd.calendar_dt_sk_id, 
                        lf.location_format_name,
						lf.location_format_manager,
						lf.store_supergroup_name,
						lf.store_group_name,
						ld.pos_nbr, 
						ld.eis_nbr, 
						ld.location_name, 
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
						0 as plan_sales,
						0 as forecast_sales,
					--	0 AS gross_profit, 
						0 AS kenmore_sales, 
						0 AS total_md_amt, 
						0 AS comp_sales, 
						0 AS craftsman_sales, 
						0 AS craftsman_units, 
						0 AS diehard_units, 
						0 AS diehard_sales, 
						0 AS guardsman_sales, 
						0 AS guardsman_units, 
						0 AS pa_sales, 
						0 AS pa_units, 
						0 AS pam_sales, 
						0 AS pam_units, 
						0 AS lease_sales, 
						0 AS lease_units, 
						0 AS avg_ticket_sales, 
						0 AS avg_ticket_units, 
						0 AS sears_credit_sales, 
						0 AS other_credit_sales, 
						0 AS bulk_sales, 
						0 AS bulk_units, 
						0 AS spp_sales, 
						0 AS spp_merch_sales, 
						0 as gp_plan_amt,
						COALESCE (sf_ly.net_sales, 0) AS net_sales_ly, 
						COALESCE (sf_ly.gross_profit, 0) AS gross_profit_ly, 
						COALESCE (sp_ty.sales_plan_amt, 0) as plan_sales_ly,
						COALESCE (sp_ty.sales_plan_amt, 0) as forecast_sales_ly,
                        CASE WHEN cd.calendar_dt <= ld.close_dt THEN sf_ly.net_sales ELSE 0 END AS comp_sales_ly, 
						COALESCE (sf_ly.net_units, 0) AS net_units_ly, 
						COALESCE (sf_ly.kenmore_sales, 0) AS kenmore_sales_ly, 
						COALESCE (sf_ly.total_md_amt, 0) AS total_md_amt_ly, 
						COALESCE (sf_ly.craftsman_sales, 0) AS craftsman_sales_ly, 
						COALESCE (sf_ly.craftsman_units, 0) AS craftsman_units_ly, 
						COALESCE (sf_ly.diehard_sales, 0) AS diehard_sales_ly, 
						COALESCE (sf_ly.diehard_units, 0) AS diehard_units_ly, 
						COALESCE (sf_ly.guardsman_sales, 0) AS guardsman_sales_ly, 
						COALESCE (sf_ly.guardsman_units, 0) AS guardsman_units_ly, 
						COALESCE (sf_ly.pa_sales, 0) AS pa_sales_ly, 
                        COALESCE (sf_ly.pa_units, 0) AS pa_units_ly, 
						COALESCE (sf_ly.pam_sales, 0) AS pam_sales_ly, 
						COALESCE (sf_ly.pam_units, 0) AS pam_units_ly, 
						COALESCE (sf_ly.lease_sales, 0) AS lease_sales_ly, 
						COALESCE (sf_ly.lease_units, 0) AS lease_units_ly, 
						COALESCE (sf_ly.avg_ticket_sales, 0) AS avg_ticket_sales_ly, 
						COALESCE (sf_ly.avg_ticket_units, 0) AS avg_ticket_units_ly,
						COALESCE (sf_ly.sears_credit_sales, 0) AS sears_credit_sales_ly,
						COALESCE (sf_ly.other_credit_sales, 0) AS other_credit_sales_ly,
						COALESCE (sf_ly.bulk_sales, 0) AS bulk_sales_ly,
						COALESCE (sf_ly.bulk_units, 0) AS bulk_units_ly,
						COALESCE (sf_ly.spp_sales, 0) AS spp_sales_ly,
						COALESCE (sf_ly.spp_merch_sales, 0) AS spp_merch_sales_ly,
						0 AS plan_amt, 
						0 AS forecast_amt, 
						0 AS plan_amt_ly, 
						0 AS forecast_amt_ly,
						COALESCE (sp_ty.gp_plan_amt, 0) as gp_plan_amt_ly
						 --plan/forecast metrics
						 --COALESCE (sf_ty.plan_amt, 0) AS plan_amt, 
						 --COALESCE (sf_ty.forecast_amt, 0) AS forecast_amt, 
						 --COALESCE (sf_ly.plan_amt, 0) AS plan_amt_ly, 
						 --COALESCE (sf_ly.forecast_amt, 0) AS forecast_amt_ly

FROM            fact.sho_sales_by_loc AS sf_ly 
						LEFT OUTER JOIN fact.sho_sales_plan_gp_by_loc sp_ty ON sf_ly.location_sk_id = sp_ty.sho_location_sk_id and sf_ly.trs_dt_sk_id = sp_ty.plan_dt_sk_id
						INNER JOIN dim.calendar AS cd ON sf_ly.trs_dt_sk_id = cd.comparable_last_year_calendar_dt_sk_id
						INNER JOIN dim.location AS ld ON sf_ly.location_sk_id = ld.location_sk_id 
							INNER JOIN dim.region lr ON ld.region_sk_id = lr.region_sk_id
							INNER JOIN dim.sho_location_formats lf ON lr.sho_location_format_sk_id = lf.sho_location_format_sk_id 
							INNER JOIN dim.district lds ON ld.district_sk_id = lds.district_sk_id

GO

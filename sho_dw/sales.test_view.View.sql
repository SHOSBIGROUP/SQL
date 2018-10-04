USE [sho_dw]
GO
/****** Object:  View [sales].[test_view]    Script Date: 10/4/2018 3:39:46 PM ******/
DROP VIEW [sales].[test_view]
GO
/****** Object:  View [sales].[test_view]    Script Date: 10/4/2018 3:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [sales].[test_view] as

SELECT        			cd.calendar_dt AS trs_dt, 
                       -- sf_ly.trs_dt as trs_dt1,
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
						ld.location_format, 
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
						 0 AS gross_profit, 
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
						sum(COALESCE (sf_ly.net_sales, 0) )  AS net_sales_ly, 
						--COALESCE (sf_ly.gross_profit, 0) 
						sum(COALESCE (sp_ty.gp_plan_amt, 0))    AS gross_profit_ly, 
						sum(COALESCE (sp_ty.sales_plan_amt, 0) ) as plan_sales_ly,
						sum(COALESCE (sp_ty.sales_plan_amt, 0))  as forecast_sales_ly,
                        sum(CASE WHEN cd.calendar_dt <= ld.close_dt THEN sf_ly.net_sales ELSE 0 END)  AS comp_sales_ly, 
						sum(COALESCE (sf_ly.net_units, 0))  AS net_units_ly, 
						sum(COALESCE (sf_ly.kenmore_sales, 0) ) AS kenmore_sales_ly, 
						sum(COALESCE (sf_ly.total_md_amt, 0))  AS total_md_amt_ly, 
						sum(COALESCE (sf_ly.craftsman_sales, 0))  AS craftsman_sales_ly, 
						sum(COALESCE (sf_ly.craftsman_units, 0))  AS craftsman_units_ly, 
						sum(COALESCE (sf_ly.diehard_sales, 0))  AS diehard_sales_ly, 
						sum(COALESCE (sf_ly.diehard_units, 0))  AS diehard_units_ly, 
						sum(COALESCE (sf_ly.guardsman_sales, 0))  AS guardsman_sales_ly, 
						sum(COALESCE (sf_ly.guardsman_units, 0))  AS guardsman_units_ly, 
						sum(COALESCE (sf_ly.pa_sales, 0))  AS pa_sales_ly, 
                        sum(COALESCE (sf_ly.pa_units, 0))  AS pa_units_ly, 
						sum(COALESCE (sf_ly.pam_sales, 0))  AS pam_sales_ly, 
						sum(COALESCE (sf_ly.pam_units, 0))  AS pam_units_ly, 
						sum(COALESCE (sf_ly.lease_sales, 0))  AS lease_sales_ly, 
						sum(COALESCE (sf_ly.lease_units, 0))  AS lease_units_ly, 
						sum(COALESCE (sf_ly.avg_ticket_sales, 0))  AS avg_ticket_sales_ly, 
						sum(COALESCE (sf_ly.avg_ticket_units, 0))  AS avg_ticket_units_ly,
						sum(COALESCE (sf_ly.sears_credit_sales, 0))  AS sears_credit_sales_ly,
						sum(COALESCE (sf_ly.other_credit_sales, 0))  AS other_credit_sales_ly,
						sum(COALESCE (sf_ly.bulk_sales, 0))  AS bulk_sales_ly,
						sum(COALESCE (sf_ly.bulk_units, 0))  AS bulk_units_ly,
						sum(COALESCE (sf_ly.spp_sales, 0)) AS spp_sales_ly,
						sum(COALESCE (sf_ly.spp_merch_sales, 0)) AS spp_merch_sales_ly,
						sum(COALESCE (sp_ty.sales_plan_amt, 0)) AS plan_amt , 
						0 AS forecast_amt, 
						0 AS plan_amt_ly, 
						0 AS forecast_amt_ly
						 --plan/forecast metrics
						 --sum(COALESCE (sp_ty.sales_plan_amt, 0)) AS plan_amt 
						 --COALESCE (sf_ty.forecast_amt, 0) AS forecast_amt, 
						 --sum(COALESCE (sf_ly.plan_amt, 0) AS plan_amt_ly, 
						 --COALESCE (sf_ly.forecast_amt, 0) AS forecast_amt_ly

FROM            fact.sho_sales_by_loc AS sf_ly 
				LEFT OUTER JOIN fact.sho_sales_plan_gp_by_loc sp_ty ON sf_ly.location_sk_id = sp_ty.sho_location_sk_id
				INNER JOIN dim.calendar AS cd ON sf_ly.trs_dt_sk_id = cd.comparable_last_year_calendar_dt_sk_id
				INNER JOIN dim.location AS ld ON sf_ly.location_sk_id = ld.location_sk_id
				INNER JOIN dim.sho_location_formats lf ON ld.sho_location_format_sk_id = lf.sho_location_format_sk_id 
				INNER JOIN dim.region lr ON ld.region_sk_id = lr.region_sk_id
				INNER JOIN dim.district lds ON ld.district_sk_id = lds.district_sk_id 
				group by	cd.calendar_dt  , --sf_ly.trs_dt,
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
						ld.location_format, 
						ld.location_type, 
						ld.operator_type, 
						ld.region, 
						concat(lr.region_nbr,' - ',lr.region_name)  ,
						lr.region_mgr,
						ld.district, 
						concat(lds.district_nbr,' - ',lds.district_name)  ,
						lds.district_manager,
						ld.open_dt, 
						ld.close_dt
GO

USE [sho_dw]
GO
/****** Object:  View [sales].[vw_daily_loc_plan_gp_tyly_fact]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP VIEW [sales].[vw_daily_loc_plan_gp_tyly_fact]
GO
/****** Object:  View [sales].[vw_daily_loc_plan_gp_tyly_fact]    Script Date: 11/13/2018 3:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [sales].[vw_daily_loc_plan_gp_tyly_fact]
AS
SELECT        			cd.calendar_dt AS trs_dt, 
						cd.fiscal_week_nbr, 
						cd.fiscal_month_nbr, 
						cd.fiscal_month_name, 
						cd.fiscal_year_nbr, 
						sf_ty.sho_location_sk_id, 
						sf_ty.plan_dt_sk_id, 
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
						COALESCE (sf_ty.sales_plan_amt, 0) AS sales_plan_amt, 
						COALESCE (sf_ly.sales_plan_amt, 0) AS sales_plan_amt_ly, 
						COALESCE (sf_ty.gp_plan_amt, 0) AS gp_plan_amt ,
						COALESCE (sf_ly.gp_plan_amt, 0) AS gp_plan_amt_ly
					
FROM            fact.sho_sales_plan_gp_by_loc AS sf_ty 
						
						INNER JOIN dim.calendar AS cd ON sf_ty.plan_dt_sk_id = cd.calendar_dt_sk_id 
						LEFT OUTER JOIN fact.sho_sales_plan_gp_by_loc AS sf_ly
							ON sf_ly.plan_dt_sk_id = cd.comparable_last_year_calendar_dt_sk_id 
								AND sf_ty.sho_location_sk_id = sf_ly.sho_location_sk_id 
						INNER JOIN dim.location AS ld ON sf_ty.sho_location_sk_id = ld.location_sk_id 
							INNER JOIN dim.region lr ON ld.region_sk_id = lr.region_sk_id
							INNER JOIN dim.sho_location_formats lf ON lr.sho_location_format_sk_id = lf.sho_location_format_sk_id 
							INNER JOIN dim.district lds ON ld.district_sk_id = lds.district_sk_id


GO

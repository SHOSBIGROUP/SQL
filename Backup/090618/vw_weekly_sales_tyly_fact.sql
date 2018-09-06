USE [sho_dw]
GO

/****** Object:  View [sales].[vw_weekly_sales_tyly_fact]    Script Date: 9/6/2018 1:34:35 PM ******/
DROP VIEW [sales].[vw_weekly_sales_tyly_fact]
GO

/****** Object:  View [sales].[vw_weekly_sales_tyly_fact]    Script Date: 9/6/2018 1:34:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



--drop view [sales].[vw_daily_loc_div_sales_tyly_fact]


create view [sales].[vw_weekly_sales_tyly_fact]
as
select
	--cd.calendar_dt as trs_dt,
	cd.fiscal_week_nbr,
	cd.fiscal_month_nbr,
	cd.fiscal_month_name,
	cd.fiscal_year_nbr,
	md.cat_nbr,
	md.cat_nm,
	md.div_nbr,
	md.div_nm,
	sf_ty.sho_location_sk_id,
	sf_ty.imu_lookup_dim_sk_id,
	sf_ty.prod_cat_div_sk_id,
	sf_ty.trs_dt_sk_id,
	ld.pos_nbr,
	ld.eis_nbr,
	ld.location_name,
	ld.location_format,
	ld.location_type,
	ld.operator_type,
	ld.district,
	ld.region,
	ld.open_dt,
	ld.close_dt,
	imu.[imu_current_week],
	imu.[imu_mtd],
	imu.[cost_complement_current_week],
	imu.[cost_complement_mtd],
	imu.[customer_adjustment_current_week],
	imu.[customer_adjeustment_mtd],
	sum(coalesce(sf_ty.net_sales,0)) net_sales,
	sum(coalesce(sf_ly.net_sales,0)) net_sales_ly,
	sum(case when cd.comparable_last_year_calendar_dt >= ld.open_dt then sf_ty.net_sales else 0 end) as comp_sales,
	sum(case when cd.calendar_dt <= ld.close_dt then sf_ly.net_sales else 0 end) as comp_sales_ly,
	sum(coalesce(sf_ty.net_units,0)) net_units,
	sum(coalesce(sf_ly.net_units,0)) net_units_ly,
	sum(coalesce(sf_ty.kenmore_sales,0)) kenmore_sales,
	sum(coalesce(sf_ly.kenmore_sales,0)) kenmore_sales_ly,
	sum(coalesce(sf_ty.total_md_amt,0)) total_md_amt,
	sum(coalesce(sf_ly.total_md_amt,0)) total_md_amt_ly,
	sum(coalesce( sf_ty.craftsman_sales,0)) craftsman_sales,
	sum(coalesce( sf_ly.craftsman_sales,0)) craftsman_sales_ly,
   sum( coalesce(sf_ty.pa_sales,0)) as pa_sales,
	sum(coalesce(sf_ly.pa_sales,0)) as pa_sales_ly,
	sum(coalesce(sf_ty.pa_units,0)) as pa_units,
	sum(coalesce(sf_ly.pa_units,0)) as pa_units_ly,
	sum(coalesce(sf_ty.pam_sales,0)) as pam_sales,
    sum(coalesce( sf_ly.pam_sales,0)) as pam_sales_ly,
	sum(coalesce(sf_ty.pam_units,0)) as pam_units,
   sum( coalesce( sf_ly.pam_units,0)) as pam_units_ly,
	sum(coalesce( sf_ty.lease_sales,0)) as lease_sales,
    sum(coalesce( sf_ly.lease_sales,0)) as lease_sales_ly,
	sum(coalesce( sf_ty.avg_ticket_amt,0)) as avg_ticket_sales,
	sum(coalesce( sf_ty.avg_ticket_units,0)) as avg_ticket_units ,
	sum(coalesce( sf_ly.avg_ticket_amt,0)) as avg_ticket_sales_ly,
	sum(coalesce( sf_ly.avg_ticket_units,0)) as avg_ticket_units_ly ,
	sum(coalesce( sf_ty.plan_sales,0)) as plan_amt,
	sum(coalesce( sf_ty.forecast_sales,0)) as forecast_amt,
	sum(coalesce( sf_ly.plan_sales,0)) as plan_amt_ly,
	sum(coalesce( sf_ty.plan_gp,0)) as plan_gp_ty,
	sum(coalesce( sf_ly.plan_gp,0)) as plan_gp_ly,
	sum(coalesce( sf_ly.forecast_sales,0)) as forecast_amt_ly,
	sum(coalesce( sf_ty.gp_sales,0)) as gp_sales,
	sum(coalesce( sf_ly.gp_sales,0) ) as gp_sales_ly,
	sum((coalesce( cast(imu.[imu_current_week] as decimal(14,2)) ,0)*coalesce( sf_ty.net_sales,0) ) - (coalesce(cast(imu.[cost_complement_current_week] as decimal(14,2)),0)*coalesce(sf_ty.total_md_amt,0)) - (coalesce(cast(imu.[customer_adjustment_current_week] as decimal(14,2) ),0)*coalesce(sf_ty.net_sales,0))) as gp_daily,
	sum((coalesce( cast(imu.[imu_mtd] as decimal(14,2)) ,0)*coalesce( sf_ty.net_sales,0) ) - (coalesce(cast(imu.[cost_complement_mtd] as decimal(14,2)),0)*coalesce(sf_ty.total_md_amt,0)) - (coalesce(cast(imu.[customer_adjeustment_mtd] as decimal(14,2) ),0)*coalesce(sf_ty.net_sales,0))) as gp_mtd 

 	--(coalesce(imu.[imu_mtd],0)*coalesce(sf_ty.net_sales,0)+coalesce(imu.[cost_complement_mtd],0)*coalesce(sf_ty.total_md_amt,0)+coalesce(imu.[customer_adjeustment_mtd],0)*coalesce(sf_ty.net_sales,0)) as gp_mtd,
	--sf_ty.rec_load_dt,
	--sf_ty.rec_upd_dt

from fact.sho_sales sf_ty
	inner join dim.calendar cd 
		ON (sf_ty.trs_dt_sk_id = cd.calendar_dt_sk_id)
	left join fact.sho_sales sf_ly 
		ON (sf_ly.trs_dt_sk_id = cd.comparable_last_year_calendar_dt_sk_id AND sf_ty.sho_location_sk_id = sf_ly.sho_location_sk_id AND sf_ty.prod_cat_div_sk_id = sf_ly.prod_cat_div_sk_id)
	left join dbo.product_cat_div_hierarchy_dim md 
		ON (sf_ty.prod_cat_div_sk_id = md.cat_div_sk_id)
	left join dim.location ld 
		ON (sf_ty.sho_location_sk_id = ld.sho_location_sk_id)
		left join dbo.imu_lookup_dim_bu imu
		on sf_ty.imu_lookup_dim_sk_id=imu.imu_lookup_dim_sk_id
		group by cd.calendar_dt,
	cd.fiscal_week_nbr,
	cd.fiscal_month_nbr,
	cd.fiscal_month_name,
	cd.fiscal_year_nbr,
	md.cat_nbr,
	md.cat_nm,
	md.div_nbr,
	md.div_nm,
	sf_ty.sho_location_sk_id,
	sf_ty.imu_lookup_dim_sk_id,
	sf_ty.prod_cat_div_sk_id,
	sf_ty.trs_dt_sk_id,
	ld.pos_nbr,
	ld.eis_nbr,
	ld.location_name,
	ld.location_format,
	ld.location_type,
	ld.operator_type,
	ld.district,
	ld.region,
	ld.open_dt,
	ld.close_dt,
	imu.[imu_current_week],
	imu.[imu_mtd],
	imu.[cost_complement_current_week],
	imu.[cost_complement_mtd],
	imu.[customer_adjustment_current_week],
	imu.[customer_adjeustment_mtd]
GO


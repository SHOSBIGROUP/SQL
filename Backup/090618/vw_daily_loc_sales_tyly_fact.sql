USE [sho_dw]
GO

/****** Object:  View [sales].[vw_daily_loc_sales_tyly_fact]    Script Date: 9/6/2018 1:33:56 PM ******/
DROP VIEW [sales].[vw_daily_loc_sales_tyly_fact]
GO

/****** Object:  View [sales].[vw_daily_loc_sales_tyly_fact]    Script Date: 9/6/2018 1:33:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [sales].[vw_daily_loc_sales_tyly_fact]
as
select
	cd.calendar_dt as trs_dt,
	cd.fiscal_week_nbr,
	cd.fiscal_month_nbr,
	cd.fiscal_month_name,
	cd.fiscal_year_nbr,
	sf_ty.sho_location_sk_id,
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
	coalesce(sf_ty.net_sales,0) net_sales,
	coalesce(sf_ly.net_sales,0) net_sales_ly,
	case when cd.comparable_last_year_calendar_dt >= ld.open_dt then sf_ty.net_sales else 0 end as comp_sales,
	case when cd.calendar_dt <= ld.close_dt then sf_ly.net_sales else 0 end as comp_sales_ly,
	coalesce(sf_ty.net_units,0) net_units,
	coalesce(sf_ly.net_units,0) net_units_ly,
	coalesce(sf_ty.kenmore_sales,0) kenmore_sales,
	coalesce(sf_ly.kenmore_sales,0) kenmore_sales_ly,
	coalesce(sf_ty.total_md_amt,0) total_md_amt,
	coalesce(sf_ly.total_md_amt,0) total_md_amt_ly,
	coalesce( sf_ty.craftsman_sales,0) craftsman_sales,
	coalesce( sf_ly.craftsman_sales,0) craftsman_sales_ly,
	coalesce( sf_ty.craftsman_units,0) craftsman_units,
	coalesce( sf_ly.craftsman_units,0) craftsman_units_ly,
    coalesce(sf_ty.pa_sales,0) as pa_sales,
	coalesce(sf_ly.pa_sales,0) as pa_sales_ly,
	coalesce(sf_ty.pa_units,0) as pa_units,
	coalesce(sf_ly.pa_units,0) as pa_units_ly,
	coalesce(sf_ty.pam_sales,0) as pam_sales,
    coalesce( sf_ly.pam_sales,0) as pam_sales_ly,
	coalesce(sf_ty.pam_units,0) as pam_units,
    coalesce( sf_ly.pam_units,0) as pam_units_ly,
	coalesce( sf_ty.lease_sales,0) as lease_sales,
    coalesce( sf_ly.lease_sales,0) as lease_sales_ly,
	
	coalesce( sf_ty.lease_units,0) as lease_units,
    coalesce( sf_ly.lease_units,0) as lease_units_ly,
	
	coalesce( sf_ty.avg_ticket_sales,0) as avg_ticket_sales,
	coalesce( sf_ty.avg_ticket_units,0) as avg_ticket_units ,
	coalesce( sf_ly.avg_ticket_sales,0) as avg_ticket_sales_ly,
	coalesce( sf_ly.avg_ticket_units,0) as avg_ticket_units_ly ,
	coalesce( sf_ty.plan_sales,0) as plan_amt,
	coalesce( sf_ty.forecast_sales,0) as forecast_amt,
	coalesce( sf_ly.plan_sales,0) as plan_amt_ly,
	coalesce( sf_ly.forecast_sales,0) as forecast_amt_ly,
	coalesce( sf_ty.gp_sales,0) as gp_sales,
	coalesce( sf_ly.gp_sales,0) as gp_sales_ly,

	coalesce( sf_ty.spp_sales,0) as spp_sales,
	coalesce( sf_ly.spp_sales,0) as spp_sales_ly,
	coalesce( sf_ty.spp_units,0) as spp_units,
	coalesce( sf_ly.spp_units,0) as spp_units_ly,
	coalesce( sf_ty.bulk_sales,0) as bulk_sales,
	coalesce( sf_ly.bulk_sales,0) as bulk_sales_ly,
	coalesce( sf_ty.bulk_units,0) as bulk_units,
	coalesce( sf_ly.bulk_units,0) as bulk_units_ly,
	coalesce(sf_ty.sears_credit_sales,0) as sears_credit_sales,
	coalesce(sf_ly.sears_credit_sales,0) as sears_credit_sales_ly,
	coalesce(sf_ty.other_credit_sales,0) as other_credit_sales,
	coalesce(sf_ly.other_credit_sales,0) as other_credit_sales_ly,
	sf_ty.rec_load_dt,
	sf_ty.rec_upd_dt

from fact.sho_sales_by_loc sf_ty
	inner join dim.calendar cd 
		ON (sf_ty.trs_dt_sk_id = cd.calendar_dt_sk_id)
	left join fact.sho_sales_by_loc sf_ly 
		ON (sf_ly.trs_dt_sk_id = cd.comparable_last_year_calendar_dt_sk_id AND sf_ty.sho_location_sk_id = sf_ly.sho_location_sk_id)
	left join dim.location ld 
		ON (sf_ty.sho_location_sk_id = ld.sho_location_sk_id)
GO


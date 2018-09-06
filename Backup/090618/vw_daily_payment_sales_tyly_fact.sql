USE [sho_dw]
GO

/****** Object:  View [sales].[vw_daily_payment_sales_tyly_fact]    Script Date: 9/6/2018 1:34:05 PM ******/
DROP VIEW [sales].[vw_daily_payment_sales_tyly_fact]
GO

/****** Object:  View [sales].[vw_daily_payment_sales_tyly_fact]    Script Date: 9/6/2018 1:34:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--drop view [sales].[vw_daily_payment_sales_tyly_fact]


create view [sales].[vw_daily_payment_sales_tyly_fact]
as
select
	cd.calendar_dt as trs_dt,
	cd.fiscal_week_nbr,
	cd.fiscal_month_nbr,
	cd.fiscal_month_name,
	cd.fiscal_year_nbr,
	sf_ty.sho_location_sk_id,
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
	sf_ty.prd_irl_no,
	sf_ty.div_no,
	sf_ty.item_no,
	coalesce(sf_ty.net_sales,0) net_sales,
	coalesce(sf_ly.net_sales,0) net_sales_ly,
--	case when cd.comparable_last_year_calendar_dt >= ld.open_dt then sf_ty.net_sales else 0 end as comp_sales,
--	case when cd.calendar_dt <= ld.close_dt then sf_ly.net_sales else 0 end as comp_sales_ly,
--	coalesce(sf_ty.net_units,0) net_units,
--	coalesce(sf_ly.net_units,0) net_units_ly,
	coalesce( sf_ty.lease_sales,0) as lease_sales,
    coalesce( sf_ly.lease_sales,0) as lease_sales_ly,	
	coalesce( sf_ty.lease_units,0) as lease_units,
    coalesce( sf_ly.lease_units,0) as lease_units_ly,
  	case when (sf_ty.pos_met_py_typ_ds like '%Sears%' ) then coalesce(sf_ty.net_sales,0) else 0 end as sears_credit_sales,
	case when (sf_ly.pos_met_py_typ_ds like '%Sears%' ) then coalesce(sf_ly.net_sales,0) else 0 end  as sears_credit_sales_ly,
	case when (sf_ty.pos_met_py_typ_ds not like '%Sears%' and sf_ty.pos_met_py_typ_ds not like '%Cash%' and sf_ty.pos_met_py_typ_ds not like '%Check%') then coalesce(sf_ty.net_sales,0) else 0 end as other_credit_sales,
	case when (sf_ly.pos_met_py_typ_ds not like '%Sears%' and sf_ly.pos_met_py_typ_ds not like '%Cash%' and sf_ly.pos_met_py_typ_ds not like '%Check%' ) then coalesce(sf_ly.net_sales,0) else 0 end as other_credit_sales_ly,
	case when (sf_ty.pos_met_py_typ_ds like '%Cash%' or  sf_ty.pos_met_py_typ_ds like '%Check%' ) then coalesce(sf_ty.net_sales,0) else 0 end as cash_check_sales,
	case when (sf_ly.pos_met_py_typ_ds like '%Cash%' or sf_ly.pos_met_py_typ_ds like '%Check%' ) then coalesce(sf_ly.net_sales,0) else 0 end as cash_check_sales_ly,
	sf_ty.rec_load_dt,
	sf_ty.rec_upd_dt

from sales.daily_sales_payment_type_fact sf_ty
	inner join dim.fiscal_calendar_dim cd 
		ON (sf_ty.trs_dt_sk_id = cd.calendar_dt_sk_id)
	left join sales.daily_sales_payment_type_fact sf_ly 
		ON (sf_ly.trs_dt_sk_id = cd.comparable_last_year_calendar_dt_sk_id AND sf_ty.sho_location_sk_id = sf_ly.sho_location_sk_id)
	left join dim.location_dim ld 
		ON (sf_ty.sho_location_sk_id = ld.sho_location_sk_id)
GO


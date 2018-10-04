USE [sho_dw]
GO
/****** Object:  View [sales].[vw_sales_by_loc]    Script Date: 10/4/2018 3:50:31 PM ******/
DROP VIEW [sales].[vw_sales_by_loc]
GO
/****** Object:  View [sales].[vw_sales_by_loc]    Script Date: 10/4/2018 3:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW  [sales].[vw_sales_by_loc]
AS  
SELECT 
sf_ty.trs_dt, 
sf_ty.pos_source_system, 
ld.region,
ld.district,
ld.pos_nbr,
ld.eis_nbr,
ld.location_name,
ld.location_type,
ld.operator_type,
ld.operator_name,
fd.store_group_name, 
fd.store_supergroup_name, 
fd.location_format_name,
fd.location_format_manager, 
sum(sf_ty.[net_sales]) as net_sales_ty,
sum(sf_ty.[net_units]) as net_units_ty,
sum(sf_ty.[kenmore_sales]) as kenmore_sales_ty,
sum(sf_ty.[kenmore_units]) as kenmore_units_ty,
sum(sf_ty.[total_md_amt]) as total_md_amt_ty,
sum(sf_ty.[craftsman_sales]) as craftsman_sales_ty,
sum(sf_ty.[craftsman_units]) as craftsman_units_ty,
sum(sf_ty.[diehard_sales]) as diehard_sales_ty,
sum(sf_ty.[diehard_units]) as diehard_units_ty,
sum(sf_ty.[avg_ticket_sales]) as avg_ticket_sales_ty,
sum(sf_ty.[avg_ticket_units]) as avg_ticket_units_ty,
sum(sf_ty.[pa_sales]) as pa_sales_ty,
sum(sf_ty.[pa_units]) as pa_units_ty,
sum(sf_ty.[lease_sales]) as lease_sales_ty,
sum(sf_ty.[lease_units]) as lease_units_ty,
sum(sf_ty.[pam_sales]) as pam_sales_ty,
sum(sf_ty.[pam_units]) as pam_units_ty,
sum(sf_ty.[spp_sales]) as spp_sales_ty,
sum(sf_ty.[spp_merch_sales]) as spp_merch_sales_ty,
sum(sf_ty.[bulk_sales]) as bulk_sales_ty,
sum(sf_ty.[bulk_units]) as bulk_units_ty,
sum(sf_ty.[sears_credit_sales]) as sears_credit_sales_ty,
sum(sf_ty.[other_credit_sales]) as other_credit_sales_ty,
sum(sf_ly.[net_sales]) as net_sales_ly,
sum(sf_ly.[net_units]) as net_units_ly,
sum(sf_ly.[kenmore_sales]) as kenmore_sales_ly,
sum(sf_ly.[kenmore_units]) as kenmore_units_ly,
sum(sf_ly.[total_md_amt]) as total_md_amt_ly,
sum(sf_ly.[craftsman_sales]) as craftsman_sales_ly,
sum(sf_ly.[craftsman_units]) as craftsman_units_ly,
sum(sf_ly.[diehard_sales]) as diehard_sales_ly,
sum(sf_ly.[diehard_units]) as diehard_units_ly,
sum(sf_ly.[avg_ticket_sales]) as avg_ticket_sales_ly,
sum(sf_ly.[avg_ticket_units]) as avg_ticket_units_ly,
sum(sf_ly.[pa_sales]) as pa_sales_ly,
sum(sf_ly.[pa_units]) as pa_units_ly,
sum(sf_ly.[lease_sales]) as lease_sales_ly,
sum(sf_ly.[lease_units]) as lease_units_ly,
sum(sf_ly.[pam_sales]) as pam_sales_ly,
sum(sf_ly.[pam_units]) as pam_units_ly,
sum(sf_ly.[spp_sales]) as spp_sales_ly,
sum(sf_ly.[spp_merch_sales]) as spp_merch_sales_ly,
sum(sf_ly.[bulk_sales]) as bulk_sales_ly,
sum(sf_ly.[bulk_units]) as bulk_units_ly,
sum(sf_ly.[sears_credit_sales]) as sears_credit_sales_ly,
sum(sf_ly.[other_credit_sales]) as other_credit_sales_ly
FROM            fact.sho_sales_by_loc sf_ty
					INNER JOIN dim.location ld ON sf_ty.location_sk_id = ld.location_sk_id 
					INNER JOIN dim.sho_location_formats fd ON ld.sho_location_format_sk_id = fd.sho_location_format_sk_id
					INNER JOIN dim.calendar cd ON sf_ty.trs_dt_sk_id = cd.calendar_dt_sk_id					
					LEFT OUTER JOIN fact.sho_sales_by_loc sf_ly ON sf_ty.location_sk_id = sf_ly.location_sk_id
					-- AND sf_ty.prod_cat_div_sk_id = sf_ly.prod_cat_div_sk_id
					AND sf_ty.trs_dt_sk_id = sf_ly.trs_dt_sk_id
GROUP BY 		sf_ty.trs_dt, 
sf_ty.pos_source_system, 
ld.region,
ld.district,
ld.pos_nbr,
ld.eis_nbr,
ld.location_name,
ld.location_type,
ld.operator_type,
ld.operator_name,
fd.store_group_name, 
fd.store_supergroup_name, 
fd.location_format_name,
fd.location_format_manager
GO

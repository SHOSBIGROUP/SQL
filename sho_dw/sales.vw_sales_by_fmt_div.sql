SET NUMERIC_ROUNDABORT OFF;  
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT,  
    QUOTED_IDENTIFIER, ANSI_NULLS ON;  

GO
	
-- *** MEP 09/19/18 - Drop View if it Exists ***  
IF OBJECT_ID ('sales.vw_sales_by_fmt_div', 'view') IS NOT NULL  
DROP VIEW sales.vw_sales_by_fmt_div ;  

GO

CREATE VIEW [sales].[vw_sales_by_fmt_div]
AS  
SELECT        	fd.sho_location_format_sk_id, 
				sf_ty.trs_dt_sk_id, 
				sf_ty.prod_cat_div_sk_id, 
				sf_ty.trs_dt, 
				sf_ty.pos_source_system, 
				fd.store_group_name, 
				fd.store_supergroup_name, 
				fd.location_format_name,
                fd.location_format_manager, 
				dd.div_nbr, 
				dd.div_name,
				dd.cat_nbr, 
				dd.cat_name,
				sum(CASE WHEN cd.comparable_last_year_calendar_dt >= ld.open_dt THEN coalesce(sf_ty.net_sales,0) ELSE 0 END) AS comp_sales, 
				sum(CASE WHEN cd.calendar_dt <= ld.close_dt THEN coalesce(sf_ly.net_sales,0) ELSE 0 END) AS comp_sales_ly, 
				SUM(COALESCE(sf_ty.net_sales, 0)) AS net_sales_ty, 
				SUM(COALESCE(sf_ty.net_units, 0)) AS net_units_ty, 
				SUM(COALESCE(sf_ty.kenmore_sales, 0)) AS kenmore_sales_ty, 
				SUM(COALESCE(sf_ty.kenmore_units, 0)) AS kenmore_units_ty, 
				SUM(COALESCE(sf_ty.total_md_amt, 0)) AS total_md_amt_ty, 
                SUM(COALESCE(sf_ty.craftsman_sales, 0)) AS craftsman_sales_ty, 
				SUM(COALESCE(sf_ty.craftsman_units, 0)) AS craftsman_units_ty, 
				SUM(COALESCE(sf_ty.diehard_sales, 0)) AS diehard_sales_ty, 
				SUM(COALESCE(sf_ty.diehard_units, 0)) AS diehard_units_ty, 
				SUM(COALESCE(sf_ty.avg_ticket_amt, 0)) AS avg_ticket_amt_ty, 
				SUM(COALESCE(sf_ty.avg_ticket_units, 0)) AS avg_ticket_units_ty, 
				SUM(COALESCE(sf_ty.pa_sales, 0)) AS pa_sales_ty, 
				SUM(COALESCE(sf_ty.pa_units, 0)) AS pa_units_ty, 
				SUM(COALESCE(sf_ty.lease_sales, 0)) AS lease_sales_ty, 
				SUM(COALESCE(sf_ty.lease_units, 0)) AS lease_units_ty, 
				SUM(COALESCE(sf_ty.pam_sales, 0)) AS pam_sales_ty, 
				SUM(COALESCE(sf_ty.pam_units, 0)) AS pam_units_ty,
				SUM(COALESCE(sf_ly.net_sales, 0)) AS net_sales_ly, 
				SUM(COALESCE(sf_ly.net_units, 0)) AS net_units_ly, 
				SUM(COALESCE(sf_ly.kenmore_sales, 0)) AS kenmore_sales_ly, 
				SUM(COALESCE(sf_ly.kenmore_units, 0)) AS kenmore_units_ly, 
				SUM(COALESCE(sf_ly.total_md_amt, 0)) AS total_md_amt_ly, 
                SUM(COALESCE(sf_ly.craftsman_sales, 0)) AS craftsman_sales_ly, 
				SUM(COALESCE(sf_ly.craftsman_units, 0)) AS craftsman_units_ly, 
				SUM(COALESCE(sf_ly.diehard_sales, 0)) AS diehard_sales_ly, 
				SUM(COALESCE(sf_ly.diehard_units, 0)) AS diehard_units_ly, 
				SUM(COALESCE(sf_ly.avg_ticket_amt, 0)) AS avg_ticket_amt_ly, 
				SUM(COALESCE(sf_ly.avg_ticket_units, 0)) AS avg_ticket_units_ly, 
				SUM(COALESCE(sf_ly.pa_sales, 0)) AS pa_sales_ly, 
				SUM(COALESCE(sf_ly.pa_units, 0)) AS pa_units_ly, 
				SUM(COALESCE(sf_ly.lease_sales, 0)) AS lease_sales_ly, 
				SUM(COALESCE(sf_ly.lease_units, 0)) AS lease_units_ly, 
				SUM(COALESCE(sf_ly.pam_sales, 0)) AS pam_sales_ly, 
				SUM(COALESCE(sf_ly.pam_units, 0)) AS pam_units_ly

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
				sf_ty.pos_source_system, 
				fd.store_group_name, 
				fd.store_supergroup_name, 
				fd.location_format_name,
                fd.location_format_manager, 
				dd.div_nbr, 
				dd.div_name,
				dd.cat_nbr, 
				dd.cat_name

go
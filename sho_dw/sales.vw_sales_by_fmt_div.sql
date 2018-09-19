SET NUMERIC_ROUNDABORT OFF;  
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT,  
    QUOTED_IDENTIFIER, ANSI_NULLS ON;  

GO
	
-- *** MEP 09/19/18 - Drop View if it Exists ***  
IF OBJECT_ID ('sales.vw_sales_by_fmt_div', 'view') IS NOT NULL  
DROP VIEW sales.vw_sales_by_fmt_div ;  

GO

CREATE VIEW [sales].[vw_sales_by_fmt_div]
WITH SCHEMABINDING  
AS  
SELECT        	COUNT_BIG(*) AS [COUNT_BIG], 
				fmt.sho_location_format_sk_id, 
				f.trs_dt_sk_id, 
				f.prod_cat_div_sk_id, 
				f.trs_dt, 
				f.pos_source_system, 
				fmt.store_group_name, 
				fmt.store_supergroup_name, 
				fmt.location_format_name,
                fmt.location_format_manager, 
				divcat.div_nbr, 
				divcat.div_nm,
				divcat.cat_nbr, 
				divcat.cat_nm,
				SUM(ISNULL(f.net_sales, 0)) AS net_sales, 
				SUM(ISNULL(f.net_units, 0)) AS net_units, 
				SUM(ISNULL(f.kenmore_sales, 0)) AS kenmore_sales, 
				SUM(ISNULL(f.kenmore_units, 0)) AS kenmore_units, 
				SUM(ISNULL(f.total_md_amt, 0)) AS total_md_amt, 
                SUM(ISNULL(f.craftsman_sales, 0)) AS craftsman_sales, 
				SUM(ISNULL(f.craftsman_units, 0)) AS craftsman_units, 
				SUM(ISNULL(f.diehard_sales, 0)) AS diehard_sales, 
				SUM(ISNULL(f.diehard_units, 0)) AS diehard_units, 
				SUM(ISNULL(f.avg_ticket_amt, 0)) AS avg_ticket_amt, 
				SUM(ISNULL(f.avg_ticket_units, 0)) AS avg_ticket_units, 
				SUM(ISNULL(f.pa_sales, 0)) AS pa_sales, 
				SUM(ISNULL(f.pa_units, 0)) AS pa_units, 
				SUM(ISNULL(f.lease_sales, 0)) AS lease_sales, 
				SUM(ISNULL(f.lease_units, 0)) AS lease_units, 
				SUM(ISNULL(f.pam_sales, 0)) AS pam_sales, 
				SUM(ISNULL(f.pam_units, 0)) AS pam_units
				

FROM            fact.sho_sales f
					INNER JOIN dim.location l ON f.location_sk_id = l.location_sk_id 
					INNER JOIN dim.sho_location_formats fmt ON l.sho_location_format_sk_id = fmt.sho_location_format_sk_id
					INNER JOIN dim.category_division divcat ON f.prod_cat_div_sk_id = divcat.cat_div_sk_id

GROUP BY 	f.trs_dt_sk_id, 
			f.prod_cat_div_sk_id, 
			f.trs_dt, 
			f.pos_source_system, 
			divcat.div_nbr, 
			divcat.div_nm,
			divcat.cat_nbr, 
			divcat.cat_nm,
			fmt.location_format_manager, 
            fmt.store_group_name, 
			fmt.store_supergroup_name, 
			fmt.location_format_name, 
            fmt.sho_location_format_sk_id

go
			
CREATE UNIQUE CLUSTERED INDEX PK_vw_sales_by_fmt_div
    ON sales.vw_sales_by_fmt_div (sho_location_format_sk_id,trs_dt_sk_id,prod_cat_div_sk_id);  

go
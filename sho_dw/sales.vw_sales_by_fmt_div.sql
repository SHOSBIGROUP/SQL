SET NUMERIC_ROUNDABORT OFF;  
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT,  
    QUOTED_IDENTIFIER, ANSI_NULLS ON;  
GO  
-- *** MEP 09/19/18 - Drop View if it Exists ***  
IF OBJECT_ID ('sales.vw_sales_by_fmt_div', 'view') IS NOT NULL  
DROP VIEW sales.vw_sales_by_fmt_div ;  
GO  

-- *** MEP 09/19/18 - Create View with Schema Binding ***
-- *** MEP 09/19/18 - Begin View SQL ***
CREATE VIEW sales.vw_sales_by_fmt_div
WITH SCHEMABINDING  
AS  
SELECT        COUNT_BIG(*) AS [COUNT_BIG], dim.sho_location_formats.sho_location_format_sk_id, fact.sho_sales.trs_dt_sk_id, fact.sho_sales.prod_cat_div_sk_id, fact.sho_sales.pos_source_system, 
                         dim.sho_location_formats.location_format_manager, fact.sho_sales.trs_dt, fact.sho_sales.div_nbr, fact.sho_sales.cat_nbr, SUM(ISNULL(fact.sho_sales.net_sales, 0)) AS net_sales, SUM(ISNULL(fact.sho_sales.net_units, 0)) 
                         AS net_units, SUM(ISNULL(fact.sho_sales.kenmore_sales, 0)) AS kenmore_sales, SUM(ISNULL(fact.sho_sales.kenmore_units, 0)) AS kenmore_units, SUM(ISNULL(fact.sho_sales.total_md_amt, 0)) AS total_md_amt, 
                         SUM(ISNULL(fact.sho_sales.craftsman_sales, 0)) AS craftsman_sales, SUM(ISNULL(fact.sho_sales.craftsman_units, 0)) AS craftsman_units, SUM(ISNULL(fact.sho_sales.diehard_sales, 0)) AS diehard_sales, 
                         SUM(ISNULL(fact.sho_sales.diehard_units, 0)) AS diehard_units, SUM(ISNULL(fact.sho_sales.avg_ticket_amt, 0)) AS avg_ticket_amt, SUM(ISNULL(fact.sho_sales.avg_ticket_units, 0)) AS avg_ticket_units, 
                         SUM(ISNULL(fact.sho_sales.pa_sales, 0)) AS pa_sales, SUM(ISNULL(fact.sho_sales.pa_units, 0)) AS pa_units, SUM(ISNULL(fact.sho_sales.lease_sales, 0)) AS lease_sales, SUM(ISNULL(fact.sho_sales.lease_units, 0)) 
                         AS lease_units, SUM(ISNULL(fact.sho_sales.pam_sales, 0)) AS pam_sales, SUM(ISNULL(fact.sho_sales.pam_units, 0)) AS pam_units, dim.location.location_name, dim.sho_location_formats.store_group_name, 
                         dim.sho_location_formats.store_supergroup_name, dim.sho_location_formats.location_format_name, dim.location.location_sk_id
FROM            fact.sho_sales INNER JOIN
                         dim.location ON fact.sho_sales.location_sk_id = dim.location.location_sk_id INNER JOIN
                         dim.sho_location_formats ON dim.location.sho_location_format_sk_id = dim.sho_location_formats.sho_location_format_sk_id
GROUP BY fact.sho_sales.trs_dt_sk_id, fact.sho_sales.prod_cat_div_sk_id, fact.sho_sales.trs_dt, fact.sho_sales.div_nbr, fact.sho_sales.cat_nbr, fact.sho_sales.pos_source_system, dim.sho_location_formats.location_format_manager, 
                         dim.location.location_name, dim.sho_location_formats.store_group_name, dim.sho_location_formats.store_supergroup_name, dim.sho_location_formats.location_format_name, 
                         dim.sho_location_formats.sho_location_format_sk_id, dim.location.location_sk_id
GO  
-- *** MEP 09/19/18 - End View SQL ***


-- *** MEP 09/19/18 - Create a Unique Clustered Index on View *** 
-- *** MEP 09/19/18 - Queries can use this Indexed/Materialized View even if not specified in From Clause ***
CREATE UNIQUE CLUSTERED INDEX PK_vw_sales_by_fmt_div
    ON sales.vw_sales_by_fmt_div (sho_location_format_sk_id,trs_dt_sk_id,location_sk_id,prod_cat_div_sk_id);  
GO  

USE sho_dw;  
GO  
-- *** MEP 09/06/18 - Set SQL Server Options to Support Indexed/Materialized Views *** 
SET NUMERIC_ROUNDABORT OFF;  
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT,  
    QUOTED_IDENTIFIER, ANSI_NULLS ON;  
GO  
-- *** MEP 09/06/18 - Drop View if it Exists ***  
IF OBJECT_ID ('sales.vw_sales_by_fmt_div', 'view') IS NOT NULL  
DROP VIEW sales.vw_sales_by_fmt_div ;  
GO  

-- *** MEP 09/06/18 - Create View with Schema Binding ***
-- *** MEP 09/06/18 - Begin View SQL ***
CREATE VIEW sales.vw_sales_by_fmt_div
WITH SCHEMABINDING  
AS  
SELECT        fact.sho_sales.trs_dt_sk_id, fact.sho_sales.prod_cat_div_sk_id, fact.sho_sales.pos_source_system, dim.sho_location_formats.location_format_title, dim.sho_location_formats.location_format_manager, fact.sho_sales.trs_dt, 
                         fact.sho_sales.div_nbr, fact.sho_sales.cat_nbr, SUM(fact.sho_sales.net_sales) AS net_sales, SUM(fact.sho_sales.net_units) AS net_units, SUM(fact.sho_sales.kenmore_sales) AS kenmore_sales, 
                         SUM(fact.sho_sales.kenmore_units) AS kenmore_units, SUM(fact.sho_sales.total_md_amt) AS total_md_amt, SUM(fact.sho_sales.craftsman_sales) AS craftsman_sales, SUM(fact.sho_sales.craftsman_units) AS craftsman_units,
                          SUM(fact.sho_sales.diehard_sales) AS diehard_sales, SUM(fact.sho_sales.diehard_units) AS diehard_units, SUM(fact.sho_sales.avg_ticket_sales) AS avg_ticket_amt, SUM(fact.sho_sales.avg_ticket_units) AS avg_ticket_units, 
                         SUM(fact.sho_sales.pa_sales) AS pa_sales, SUM(fact.sho_sales.pa_units) AS pa_units, SUM(fact.sho_sales.lease_sales) AS lease_sales, SUM(fact.sho_sales.lease_units) AS lease_units, SUM(fact.sho_sales.pam_sales) 
                         AS pam_sales, SUM(fact.sho_sales.pam_units) AS pam_units, dim.location.location_name, dim.sho_location_formats.store_group_name, dim.sho_location_formats.store_supergroup_name
FROM            dim.sho_location_formats INNER JOIN
                         dim.location ON dim.sho_location_formats.sho_location_format_sk_id = dim.location.sho_location_format_sk_id INNER JOIN
                         fact.sho_sales ON dim.location.location_sk_id = fact.sho_sales.location_sk_id
GROUP BY fact.sho_sales.trs_dt_sk_id, fact.sho_sales.prod_cat_div_sk_id, fact.sho_sales.trs_dt, fact.sho_sales.div_nbr, fact.sho_sales.cat_nbr, fact.sho_sales.pos_source_system, dim.sho_location_formats.location_format_title, 
                         dim.sho_location_formats.location_format_manager, dim.location.location_name, dim.sho_location_formats.store_group_name, dim.sho_location_formats.store_supergroup_name;
GO  
-- *** MEP 09/06/18 - End View SQL ***


-- *** MEP 09/06/18 - Create a Unique Clustered Index on View *** 
-- *** MEP 09/06/18 - Queries can use this Indexed/Materialized View even if not specified in From Clause ***
CREATE UNIQUE CLUSTERED INDEX PK_vw_sales_by_fmt_div
    ON sales.vw_sales_by_fmt_div (trs_dt_sk_id,prod_cat_div_sk_id,trs_dt,div_nbr,cat_nbr,pos_source_system,location_format_title,location_format_manager,location_name,store_group_name,store_supergroup_name);  
GO  


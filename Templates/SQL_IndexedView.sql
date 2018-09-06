USE sho_dw;  
GO  
-- *** MEP 09/06/18 - Set SQL Server Options to Support Indexed/Materialized Views *** 
SET NUMERIC_ROUNDABORT OFF;  
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT,  
    QUOTED_IDENTIFIER, ANSI_NULLS ON;  
GO  
-- *** MEP 09/06/18 - Drop View if it Exists ***  
IF OBJECT_ID ('sales.NEWVIEW', 'view') IS NOT NULL  
DROP VIEW sales.NEWVIEW ;  
GO  

-- *** MEP 09/06/18 - Create View with Schema Binding ***
-- *** MEP 09/06/18 - Begin View SQL ***
CREATE VIEW sales.NEWVIEW
WITH SCHEMABINDING  
AS  
    SELECT  fact.sho_sales.daily_loc_div_sales_fact_sk_id, fact.sho_sales.trs_dt_sk_id, fact.sho_sales.prod_cat_div_sk_id, fact.sho_sales.sho_location_sk_id, fact.sho_sales.trs_dt, fact.sho_sales.pos_nbr, fact.sho_sales.div_nbr, 
				 fact.sho_sales.cat_nbr, fact.sho_sales.net_sales, fact.sho_sales.net_units, fact.sho_sales.kenmore_sales, fact.sho_sales.kenmore_units, fact.sho_sales.total_md_amt, fact.sho_sales.craftsman_sales, 
				 fact.sho_sales.carftsman_units, fact.sho_sales.diehard_sales, fact.sho_sales.diehard_units, fact.sho_sales.avg_ticket_amt, fact.sho_sales.avg_ticket_units, fact.sho_sales.pos_source_system, fact.sho_sales.pa_sales, 
				 fact.sho_sales.pa_units, fact.sho_sales.lease_sales, fact.sho_sales.lease_units, fact.sho_sales.pam_sales, fact.sho_sales.pam_units, fact.sho_sales.spp_merch_sales, fact.sho_sales.spp_merch_units, 
				 fact.sho_sales.rec_load_dt, fact.sho_sales.rec_upd_dt, fact.sho_sales.imu_lookup_dim_sk_id, fact.sho_sales_plan_gp_by_loc.sales_plan_amt, fact.sho_sales_plan_gp_by_loc.gp_plan_amt
FROM        fact.sho_sales INNER JOIN
            fact.sho_sales_plan_gp_by_loc ON fact.sho_sales.sho_location_sk_id = fact.sho_sales_plan_gp_by_loc.sho_location_sk_id AND fact.sho_sales.trs_dt_sk_id = fact.sho_sales_plan_gp_by_loc.plan_dt_sk_id;
GO  
-- *** MEP 09/06/18 - End View SQL ***


-- *** MEP 09/06/18 - Create a Unique Clustered Index on View *** 
-- *** MEP 09/06/18 - Queries can use this Indexed/Materialized View even if not specified in From Clause ***
CREATE UNIQUE CLUSTERED INDEX IDX_sales.NEWVIEW_daily_loc_div_sales_fact_sk_id 
    ON sales.NEWVIEW (daily_loc_div_sales_fact_sk_id);  
GO  

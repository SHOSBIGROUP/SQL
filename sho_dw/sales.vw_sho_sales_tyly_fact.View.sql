USE [sho_dw]
GO
/****** Object:  View [sales].[vw_sho_sales_tyly_fact]    Script Date: 10/4/2018 3:39:46 PM ******/
DROP VIEW [sales].[vw_sho_sales_tyly_fact]
GO
/****** Object:  View [sales].[vw_sho_sales_tyly_fact]    Script Date: 10/4/2018 3:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [sales].[vw_sho_sales_tyly_fact]
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
                         dim.sho_location_formats.location_format_manager, dim.location.location_name, dim.sho_location_formats.store_group_name, dim.sho_location_formats.store_supergroup_name
GO

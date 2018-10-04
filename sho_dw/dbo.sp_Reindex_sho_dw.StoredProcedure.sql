USE [sho_dw]
GO
/****** Object:  StoredProcedure [dbo].[sp_Reindex_sho_dw]    Script Date: 10/4/2018 3:50:31 PM ******/
DROP PROCEDURE [dbo].[sp_Reindex_sho_dw]
GO
/****** Object:  StoredProcedure [dbo].[sp_Reindex_sho_dw]    Script Date: 10/4/2018 3:50:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Reindex_sho_dw]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SET NOCOUNT ON;

	-- *** MEP 09/15/19 - select 'DBCC DBREINDEX (' + CHAR(39) + SCHEMA_NAME(schema_id) + '.' + Name + CHAR(39) + ', ' + CHAR(39) + CHAR(39) + ', 95);' From sys.tables where type_desc = 'USER_TABLE' Order By Name ***
	-- Created SQL to Reindex all Tables with Fill Factor of 95 --
	DBCC DBREINDEX ('dim.imu_lookup', '', 95);
DBCC DBREINDEX ('dbo.imu_lookup_dim_bu', '', 95);
DBCC DBREINDEX ('dim.district', '', 95);
DBCC DBREINDEX ('fact.sho_sales_by_item', '', 95);
DBCC DBREINDEX ('fact.sho_sales_by_loc', '', 95);
DBCC DBREINDEX ('fact.sho_sales_by_item_ns', '', 95);
DBCC DBREINDEX ('dbo.scorecard_ratings', '', 95);
DBCC DBREINDEX ('dim.region', '', 95);
DBCC DBREINDEX ('dbo.daily_sales_payment_type_fact', '', 95);
DBCC DBREINDEX ('dbo.pss_scorecard_fact', '', 95);
DBCC DBREINDEX ('dim.location', '', 95);
DBCC DBREINDEX ('fact.sho_sales_plan_forecast_by_div_format', '', 95);
DBCC DBREINDEX ('dim.calendar', '', 95);
DBCC DBREINDEX ('dim.sho_location_formats', '', 95);
DBCC DBREINDEX ('dbo.BIG_DADDY_EXTRACT', '', 95);
DBCC DBREINDEX ('dbo.Field_Scorecard_Extract', '', 95);
DBCC DBREINDEX ('dbo.Field_Scorecard_HA_Extract', '', 95);
DBCC DBREINDEX ('fact.sho_sales', '', 95);
DBCC DBREINDEX ('fact.sho_sales_by_loc_ns', '', 95);
DBCC DBREINDEX ('dim.product', '', 95);
DBCC DBREINDEX ('dbo.sls_dly_trs_fact', '', 95);
DBCC DBREINDEX ('dbo.sls_dly_trs_tyly_agg', '', 95);
DBCC DBREINDEX ('dim.competitor', '', 95);
DBCC DBREINDEX ('dbo.product_hierarchy_business_dim', '', 95);
DBCC DBREINDEX ('dbo.product_hierarchy_category_dim', '', 95);
DBCC DBREINDEX ('dbo.product_hierarchy_dim_old', '', 95);
DBCC DBREINDEX ('dbo.sho_location_dim_bu', '', 95);
DBCC DBREINDEX ('fact.sho_sales_plan_gp_by_loc', '', 95);
DBCC DBREINDEX ('dim.category_division_old', '', 95);
DBCC DBREINDEX ('dbo.sysdiagrams', '', 95);
DBCC DBREINDEX ('dim.customer', '', 95);
DBCC DBREINDEX ('fact.item_uid', '', 95);
DBCC DBREINDEX ('fact.sho_sales_ns', '', 95);
DBCC DBREINDEX ('dbo.sho_location_dim_new_old', '', 95);
DBCC DBREINDEX ('dim.category_division', '', 95);
DBCC DBREINDEX ('dbo.product_cat_div_hierarchy_dim', '', 95);
DBCC DBREINDEX ('dbo.location_outlet_ordc_network', '', 95);
DBCC DBREINDEX ('fact.uid_competitor_market', '', 95);
DBCC DBREINDEX ('dim.item_uid', '', 95);
DBCC DBREINDEX ('dim.product_dev', '', 95);
DBCC DBREINDEX ('dbo.legacy_sho_location_dim', '', 95);
DBCC DBREINDEX ('dbo.sls_dly_trs_div_tyly_agg', '', 95);
DBCC DBREINDEX ('dbo.daily_sales_payment_fact_temp', '', 95);

END
GO

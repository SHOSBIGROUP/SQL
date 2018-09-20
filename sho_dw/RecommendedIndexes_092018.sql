use [sho_dw]
go

SET ANSI_PADDING ON

go

CREATE NONCLUSTERED INDEX [IX_SHO_SALES_CAT_DIV_TRS_DT_LOC_SK_TRS_DT_POS] ON [fact].[sho_sales]
(
	[prod_cat_div_sk_id] ASC,
	[trs_dt_sk_id] ASC,
	[location_sk_id] ASC,
	[trs_dt] ASC,
	[pos_source_system] ASC
)
INCLUDE ( 	[net_sales],
	[net_units],
	[kenmore_sales],
	[kenmore_units],
	[total_md_amt],
	[craftsman_sales],
	[craftsman_units],
	[diehard_sales],
	[diehard_units],
	[avg_ticket_amt],
	[avg_ticket_units],
	[pa_sales],
	[pa_units],
	[lease_sales],
	[lease_units],
	[pam_sales],
	[pam_units]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE STATISTICS [STAT_SHO_SALES_TRS_DT_SK_ID] ON [fact].[sho_sales]([trs_dt_sk_id], [location_sk_id])
go

CREATE STATISTICS [STAT_SHO_SALES_LOCATION_SK_ID] ON [fact].[sho_sales]([location_sk_id], [prod_cat_div_sk_id])
go

CREATE STATISTICS [STAT_SHO_TRS_DT_SK_ID_PROD_CAT_DIV] ON [fact].[sho_sales]([trs_dt_sk_id], [prod_cat_div_sk_id], [trs_dt], [pos_source_system])
go

CREATE STATISTICS [STAT_DIM_LOCATION_SHO_LOCATION_FORMAT_LOCATION_SK_ID] ON [dim].[location]([sho_location_format_sk_id], [location_sk_id])
go


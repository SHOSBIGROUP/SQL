USE [sho_dw]
GO
/****** Object:  Index [IX_sho_sales_bu_sho_sales_trs_dt_sk_id]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [IX_sho_sales_bu_sho_sales_trs_dt_sk_id] ON [fact].[sho_sales_bu]
GO
/****** Object:  Index [IX_sho_sales_bu_location_sk_id]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [IX_sho_sales_bu_location_sk_id] ON [fact].[sho_sales_bu]
GO
/****** Object:  Index [fact_sales_bu_loc_gp_trs_dt_div_nbr]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [fact_sales_bu_loc_gp_trs_dt_div_nbr] ON [fact].[sho_sales_bu]
GO
/****** Object:  Table [fact].[sho_sales_bu]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [fact].[sho_sales_bu]
GO
/****** Object:  Table [fact].[sho_sales_bu]    Script Date: 10/26/2018 4:01:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_bu](
	[daily_loc_div_sales_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NOT NULL,
	[prod_cat_div_sk_id] [int] NOT NULL,
	[location_sk_id] [int] NOT NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[div_nbr] [int] NULL,
	[cat_nbr] [int] NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[gross_profit] [decimal](11, 2) NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[craftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[avg_ticket_amt] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [fact_sales_bu_loc_gp_trs_dt_div_nbr]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [fact_sales_bu_loc_gp_trs_dt_div_nbr] ON [fact].[sho_sales_bu]
(
	[location_sk_id] ASC,
	[gross_profit] ASC,
	[trs_dt_sk_id] ASC,
	[div_nbr] ASC
)
INCLUDE ( 	[daily_loc_div_sales_fact_sk_id],
	[prod_cat_div_sk_id],
	[trs_dt],
	[pos_nbr],
	[cat_nbr],
	[net_sales],
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
	[pos_source_system],
	[pa_sales],
	[pa_units],
	[lease_sales],
	[lease_units],
	[pam_sales],
	[pam_units],
	[rec_load_dt],
	[rec_upd_dt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_sho_sales_bu_location_sk_id]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_sho_sales_bu_location_sk_id] ON [fact].[sho_sales_bu]
(
	[location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_sho_sales_bu_sho_sales_trs_dt_sk_id]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_sho_sales_bu_sho_sales_trs_dt_sk_id] ON [fact].[sho_sales_bu]
(
	[trs_dt_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO

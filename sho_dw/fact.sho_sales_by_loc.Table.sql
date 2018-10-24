USE [sho_dw]
GO
ALTER TABLE [fact].[sho_sales_by_loc] DROP CONSTRAINT [DF__sho_sales__rec_u__1466F737]
GO
ALTER TABLE [fact].[sho_sales_by_loc] DROP CONSTRAINT [DF__sho_sales__rec_l__1372D2FE]
GO
/****** Object:  Index [IX_sho_sales_location_sk_id]    Script Date: 10/24/2018 4:25:55 PM ******/
DROP INDEX [IX_sho_sales_location_sk_id] ON [fact].[sho_sales_by_loc]
GO
/****** Object:  Index [IX_sho_sales_by_loc_sho_sales_trs_dt_sk_id]    Script Date: 10/24/2018 4:25:55 PM ******/
DROP INDEX [IX_sho_sales_by_loc_sho_sales_trs_dt_sk_id] ON [fact].[sho_sales_by_loc]
GO
/****** Object:  Table [fact].[sho_sales_by_loc]    Script Date: 10/24/2018 4:25:55 PM ******/
DROP TABLE [fact].[sho_sales_by_loc]
GO
/****** Object:  Table [fact].[sho_sales_by_loc]    Script Date: 10/24/2018 4:25:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_by_loc](
	[daily_loc_sales_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NULL,
	[location_sk_id] [int] NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
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
	[guardsman_sales] [decimal](11, 2) NULL,
	[guardsman_units] [int] NULL,
	[avg_ticket_sales] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [bigint] NULL,
	[spp_sales] [decimal](11, 2) NULL,
	[spp_merch_sales] [decimal](11, 2) NULL,
	[bulk_sales] [decimal](11, 2) NULL,
	[bulk_units] [int] NULL,
	[sears_credit_sales] [decimal](11, 2) NULL,
	[other_credit_sales] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_loc_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_sho_sales_by_loc_sho_sales_trs_dt_sk_id]    Script Date: 10/24/2018 4:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_sho_sales_by_loc_sho_sales_trs_dt_sk_id] ON [fact].[sho_sales_by_loc]
(
	[trs_dt_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_sho_sales_location_sk_id]    Script Date: 10/24/2018 4:26:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_sho_sales_location_sk_id] ON [fact].[sho_sales_by_loc]
(
	[location_sk_id] ASC
)
INCLUDE ( 	[trs_dt_sk_id],
	[net_sales],
	[total_md_amt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
ALTER TABLE [fact].[sho_sales_by_loc] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[sho_sales_by_loc] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO

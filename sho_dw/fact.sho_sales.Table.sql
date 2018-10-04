USE [sho_dw]
GO
ALTER TABLE [fact].[sho_sales] DROP CONSTRAINT [DF__sho_sales__rec_u__10966653]
GO
ALTER TABLE [fact].[sho_sales] DROP CONSTRAINT [DF__sho_sales__rec_l__0FA2421A]
GO
/****** Object:  Index [sho_sales_trs_dt_sk_id]    Script Date: 10/4/2018 3:50:31 PM ******/
DROP INDEX [sho_sales_trs_dt_sk_id] ON [fact].[sho_sales]
GO
/****** Object:  Index [IX_sho_sales_trs_dt_div]    Script Date: 10/4/2018 3:50:31 PM ******/
DROP INDEX [IX_sho_sales_trs_dt_div] ON [fact].[sho_sales]
GO
/****** Object:  Index [IX_sho_sales_location_div_trs_dt_daily_loc]    Script Date: 10/4/2018 3:50:31 PM ******/
DROP INDEX [IX_sho_sales_location_div_trs_dt_daily_loc] ON [fact].[sho_sales]
GO
/****** Object:  Index [fact_sho_sales_trs_dt_location]    Script Date: 10/4/2018 3:50:31 PM ******/
DROP INDEX [fact_sho_sales_trs_dt_location] ON [fact].[sho_sales]
GO
/****** Object:  Table [fact].[sho_sales]    Script Date: 10/4/2018 3:50:31 PM ******/
DROP TABLE [fact].[sho_sales]
GO
/****** Object:  Table [fact].[sho_sales]    Script Date: 10/4/2018 3:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales](
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
	[guardsman_sales] [decimal](11, 2) NULL,
	[guardsman_units] [int] NULL,
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
	[rec_upd_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_sho_sales_daily_loc_div_sales_fact_sk_id] PRIMARY KEY CLUSTERED 
(
	[daily_loc_div_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [fact_sho_sales_trs_dt_location]    Script Date: 10/4/2018 3:50:39 PM ******/
CREATE NONCLUSTERED INDEX [fact_sho_sales_trs_dt_location] ON [fact].[sho_sales]
(
	[trs_dt_sk_id] ASC,
	[location_sk_id] ASC
)
INCLUDE ( 	[net_sales],
	[total_md_amt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_sho_sales_location_div_trs_dt_daily_loc]    Script Date: 10/4/2018 3:50:39 PM ******/
CREATE NONCLUSTERED INDEX [IX_sho_sales_location_div_trs_dt_daily_loc] ON [fact].[sho_sales]
(
	[location_sk_id] ASC,
	[div_nbr] ASC,
	[trs_dt_sk_id] ASC,
	[daily_loc_div_sales_fact_sk_id] ASC
)
INCLUDE ( 	[net_sales],
	[total_md_amt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_sho_sales_trs_dt_div]    Script Date: 10/4/2018 3:50:39 PM ******/
CREATE NONCLUSTERED INDEX [IX_sho_sales_trs_dt_div] ON [fact].[sho_sales]
(
	[trs_dt_sk_id] ASC,
	[div_nbr] ASC
)
INCLUDE ( 	[net_sales],
	[total_md_amt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [sho_sales_trs_dt_sk_id]    Script Date: 10/4/2018 3:50:39 PM ******/
CREATE NONCLUSTERED INDEX [sho_sales_trs_dt_sk_id] ON [fact].[sho_sales]
(
	[trs_dt_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
ALTER TABLE [fact].[sho_sales] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[sho_sales] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO

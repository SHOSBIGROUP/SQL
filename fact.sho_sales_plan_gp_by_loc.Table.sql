USE [sho_dw]
GO
ALTER TABLE [fact].[sho_sales_plan_gp_by_loc] DROP CONSTRAINT [DF__sho_sales__rec_u__48EFCE0F]
GO
ALTER TABLE [fact].[sho_sales_plan_gp_by_loc] DROP CONSTRAINT [DF__sho_sales__rec_l__47FBA9D6]
GO
/****** Object:  Index [IX_sho_sales_plan_gp_by_loc_plandt_location]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [IX_sho_sales_plan_gp_by_loc_plandt_location] ON [fact].[sho_sales_plan_gp_by_loc]
GO
/****** Object:  Table [fact].[sho_sales_plan_gp_by_loc]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [fact].[sho_sales_plan_gp_by_loc]
GO
/****** Object:  Table [fact].[sho_sales_plan_gp_by_loc]    Script Date: 10/26/2018 4:01:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_plan_gp_by_loc](
	[plan_by_loc_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[plan_dt_sk_id] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[plan_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[sales_plan_amt] [decimal](11, 2) NULL,
	[gp_plan_amt] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[plan_by_loc_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_sho_sales_plan_gp_by_loc_plandt_location]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_sho_sales_plan_gp_by_loc_plandt_location] ON [fact].[sho_sales_plan_gp_by_loc]
(
	[plan_dt_sk_id] ASC,
	[sho_location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
ALTER TABLE [fact].[sho_sales_plan_gp_by_loc] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[sho_sales_plan_gp_by_loc] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO

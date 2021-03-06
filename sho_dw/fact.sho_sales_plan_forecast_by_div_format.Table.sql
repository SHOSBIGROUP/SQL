USE [sho_dw]
GO
ALTER TABLE [fact].[sho_sales_plan_forecast_by_div_format] DROP CONSTRAINT [DF_sho_sales_plan_forecast_by_div_format_rec_upd_dt]
GO
ALTER TABLE [fact].[sho_sales_plan_forecast_by_div_format] DROP CONSTRAINT [DF_sho_sales_plan_forecast_by_div_format_rec_load_dt]
GO
/****** Object:  Index [sho_sales_plan_forecast_by_div_format_plandt_loctionformat_catdivskid_planbydivformatid]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP INDEX [sho_sales_plan_forecast_by_div_format_plandt_loctionformat_catdivskid_planbydivformatid] ON [fact].[sho_sales_plan_forecast_by_div_format]
GO
/****** Object:  Index [IX_sho_sales_plan_forecast_by_div_format_plan_dt_sk_id]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP INDEX [IX_sho_sales_plan_forecast_by_div_format_plan_dt_sk_id] ON [fact].[sho_sales_plan_forecast_by_div_format]
GO
/****** Object:  Index [IX_sho_sales_plan_forecast_by_div_format_location_format_sk_id]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP INDEX [IX_sho_sales_plan_forecast_by_div_format_location_format_sk_id] ON [fact].[sho_sales_plan_forecast_by_div_format]
GO
/****** Object:  Index [IX_sho_sales_plan_forecast_by_div_format_location_catdiv_plandt]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP INDEX [IX_sho_sales_plan_forecast_by_div_format_location_catdiv_plandt] ON [fact].[sho_sales_plan_forecast_by_div_format]
GO
/****** Object:  Index [IX_sho_sales_plan_forecast_by_div_format_cat_div_sk_id]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP INDEX [IX_sho_sales_plan_forecast_by_div_format_cat_div_sk_id] ON [fact].[sho_sales_plan_forecast_by_div_format]
GO
/****** Object:  Table [fact].[sho_sales_plan_forecast_by_div_format]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [fact].[sho_sales_plan_forecast_by_div_format]
GO
/****** Object:  Table [fact].[sho_sales_plan_forecast_by_div_format]    Script Date: 11/13/2018 3:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_plan_forecast_by_div_format](
	[plan_by_div_format_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[location_format_sk_id] [int] NOT NULL,
	[cat_div_sk_id] [int] NOT NULL,
	[plan_dt_sk_id] [int] NOT NULL,
	[store_format_cd] [varchar](10) NULL,
	[div_nbr] [char](3) NOT NULL,
	[plan_dt] [date] NOT NULL,
	[plan_amt] [decimal](11, 2) NULL,
	[forecast_amt] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
 CONSTRAINT [PK__sho_plan__E2BBD8709CC64707] PRIMARY KEY CLUSTERED 
(
	[plan_by_div_format_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_sho_sales_plan_forecast_by_div_format_cat_div_sk_id]    Script Date: 11/13/2018 3:54:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_sho_sales_plan_forecast_by_div_format_cat_div_sk_id] ON [fact].[sho_sales_plan_forecast_by_div_format]
(
	[cat_div_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_sho_sales_plan_forecast_by_div_format_location_catdiv_plandt]    Script Date: 11/13/2018 3:54:32 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_sho_sales_plan_forecast_by_div_format_location_catdiv_plandt] ON [fact].[sho_sales_plan_forecast_by_div_format]
(
	[location_format_sk_id] ASC,
	[cat_div_sk_id] ASC,
	[plan_dt_sk_id] ASC,
	[div_nbr] ASC,
	[store_format_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_sho_sales_plan_forecast_by_div_format_location_format_sk_id]    Script Date: 11/13/2018 3:54:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_sho_sales_plan_forecast_by_div_format_location_format_sk_id] ON [fact].[sho_sales_plan_forecast_by_div_format]
(
	[location_format_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_sho_sales_plan_forecast_by_div_format_plan_dt_sk_id]    Script Date: 11/13/2018 3:54:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_sho_sales_plan_forecast_by_div_format_plan_dt_sk_id] ON [fact].[sho_sales_plan_forecast_by_div_format]
(
	[plan_dt_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [sho_sales_plan_forecast_by_div_format_plandt_loctionformat_catdivskid_planbydivformatid]    Script Date: 11/13/2018 3:54:32 PM ******/
CREATE NONCLUSTERED INDEX [sho_sales_plan_forecast_by_div_format_plandt_loctionformat_catdivskid_planbydivformatid] ON [fact].[sho_sales_plan_forecast_by_div_format]
(
	[plan_dt_sk_id] ASC,
	[location_format_sk_id] ASC,
	[cat_div_sk_id] ASC,
	[plan_by_div_format_sk_id] ASC
)
INCLUDE ( 	[plan_amt],
	[forecast_amt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
ALTER TABLE [fact].[sho_sales_plan_forecast_by_div_format] ADD  CONSTRAINT [DF_sho_sales_plan_forecast_by_div_format_rec_load_dt]  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[sho_sales_plan_forecast_by_div_format] ADD  CONSTRAINT [DF_sho_sales_plan_forecast_by_div_format_rec_upd_dt]  DEFAULT (getdate()) FOR [rec_upd_dt]
GO

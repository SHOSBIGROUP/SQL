USE [sho_dw]
GO
ALTER TABLE [fact].[uid_competitor_market] DROP CONSTRAINT [Fk_uid_competitor_market_competitor]
GO
ALTER TABLE [fact].[uid_competitor_market] DROP CONSTRAINT [defo_uid_competitor_market_uid_location_sk_id]
GO
ALTER TABLE [fact].[uid_competitor_market] DROP CONSTRAINT [DF__uid_compe__rec_l__703EA55A]
GO
/****** Object:  Index [Idx_uid_competitor_market_competitor_sk_id]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [Idx_uid_competitor_market_competitor_sk_id] ON [fact].[uid_competitor_market]
GO
/****** Object:  Table [fact].[uid_competitor_market]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [fact].[uid_competitor_market]
GO
/****** Object:  Table [fact].[uid_competitor_market]    Script Date: 10/26/2018 4:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[uid_competitor_market](
	[uid_competitor_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[item_uid_sk_id] [int] NOT NULL,
	[competitor_sk_id] [int] NOT NULL,
	[competitor_item_price] [decimal](11, 2) NULL,
	[scrape_dt] [datetime] NOT NULL,
	[scrape_dt_sk_id] [int] NOT NULL,
	[rec_load_dt] [datetime] NULL,
	[uid_location_sk_id] [int] NULL,
	[is_item_available] [bit] NULL,
	[is_price_incart] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uid_competitor_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Idx_uid_competitor_market_competitor_sk_id]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [Idx_uid_competitor_market_competitor_sk_id] ON [fact].[uid_competitor_market]
(
	[competitor_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
ALTER TABLE [fact].[uid_competitor_market] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[uid_competitor_market] ADD  CONSTRAINT [defo_uid_competitor_market_uid_location_sk_id]  DEFAULT ((-1)) FOR [uid_location_sk_id]
GO
ALTER TABLE [fact].[uid_competitor_market]  WITH CHECK ADD  CONSTRAINT [Fk_uid_competitor_market_competitor] FOREIGN KEY([competitor_sk_id])
REFERENCES [dim].[competitor] ([competitor_sk_id])
GO
ALTER TABLE [fact].[uid_competitor_market] CHECK CONSTRAINT [Fk_uid_competitor_market_competitor]
GO

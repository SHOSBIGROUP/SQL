USE [sho_staging]
GO
ALTER TABLE [markettrack].[sho_market_track] DROP CONSTRAINT [DF__sho_marke__rec_l__68D28DBC]
GO
/****** Object:  Table [markettrack].[sho_market_track]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [markettrack].[sho_market_track]
GO
/****** Object:  Table [markettrack].[sho_market_track]    Script Date: 9/11/2018 9:34:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [markettrack].[sho_market_track](
	[Category] [varchar](200) NULL,
	[your_sku] [varchar](50) NULL,
	[sku] [varchar](50) NULL,
	[title] [varchar](250) NULL,
	[brand] [varchar](50) NULL,
	[competitor] [varchar](50) NULL,
	[marketplace_seller] [varchar](250) NULL,
	[crawl_date] [varchar](50) NULL,
	[src_regular_price] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[shipping] [varchar](50) NULL,
	[price_with_shipping] [varchar](50) NULL,
	[url] [varchar](650) NULL,
	[PID] [varchar](50) NULL,
	[availability] [varchar](50) NULL,
	[in cart price] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [markettrack].[sho_market_track] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

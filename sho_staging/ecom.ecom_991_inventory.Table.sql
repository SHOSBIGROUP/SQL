USE [sho_staging]
GO
ALTER TABLE [ecom].[ecom_991_inventory] DROP CONSTRAINT [DF__ecom_991___rec_l__6ABAD62E]
GO
/****** Object:  Table [ecom].[ecom_991_inventory]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [ecom].[ecom_991_inventory]
GO
/****** Object:  Table [ecom].[ecom_991_inventory]    Script Date: 10/4/2018 3:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ecom].[ecom_991_inventory](
	[division_number] [varchar](50) NULL,
	[item_number] [varchar](50) NULL,
	[line_number] [varchar](50) NULL,
	[subline_number] [varchar](50) NULL,
	[store_unit] [varchar](50) NULL,
	[sku_number] [varchar](50) NULL,
	[transaction_number] [varchar](50) NULL,
	[item_uid] [varchar](50) NULL,
	[item_name] [varchar](200) NULL,
	[Current_Price] [varchar](50) NULL,
	[regular_price] [varchar](50) NULL,
	[cadence_level_indicator] [varchar](50) NULL,
	[brand_display_name] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [ecom].[ecom_991_inventory] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

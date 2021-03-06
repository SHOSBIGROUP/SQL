USE [sho_staging]
GO
/****** Object:  Table [ecom].[ecom_991_inventory]    Script Date: 10/26/2018 4:02:37 PM ******/
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

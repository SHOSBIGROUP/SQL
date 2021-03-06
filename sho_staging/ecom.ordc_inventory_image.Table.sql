USE [sho_staging]
GO
/****** Object:  Table [ecom].[ordc_inventory_image]    Script Date: 10/26/2018 4:02:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ecom].[ordc_inventory_image](
	[full_uid] [varchar](50) NULL,
	[ordc_no] [varchar](50) NULL,
	[store_load_time] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[image_type] [varchar](50) NULL,
	[image_name] [varchar](50) NULL,
	[image_view] [varchar](50) NULL,
	[product_conditions] [varchar](200) NULL,
	[product_status] [varchar](50) NULL,
	[item_uid] [varchar](50) NULL,
	[image_url] [varchar](700) NULL,
	[outlet_load_time] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [ecom].[ordc_inventory_image] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

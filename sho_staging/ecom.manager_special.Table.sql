USE [sho_staging]
GO
ALTER TABLE [ecom].[manager_special] DROP CONSTRAINT [DF__manager_s__rec_l__467D75B8]
GO
/****** Object:  Table [ecom].[manager_special]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [ecom].[manager_special]
GO
/****** Object:  Table [ecom].[manager_special]    Script Date: 9/11/2018 9:34:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ecom].[manager_special](
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
ALTER TABLE [ecom].[manager_special] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

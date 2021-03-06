USE [sho_staging]
GO
/****** Object:  Table [ecom].[manager_special]    Script Date: 10/26/2018 4:02:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ecom].[manager_special](
	[item_uid] [varchar](50) NULL,
	[store_unit] [varchar](50) NULL,
	[division_number] [varchar](50) NULL,
	[item_number] [varchar](50) NULL,
	[sku_number] [varchar](50) NULL,
	[plus_4_number] [varchar](50) NULL,
	[base_rim_qty] [varchar](50) NULL,
	[current_rim_qty] [varchar](50) NULL,
	[base_mts_qty] [varchar](50) NULL,
	[current_mts_qty] [varchar](50) NULL,
	[base_price] [varchar](50) NULL,
	[current_mts_price] [varchar](50) NULL,
	[start_date] [varchar](50) NULL,
	[end_date] [varchar](50) NULL,
	[approval_flag] [varchar](50) NULL,
	[quantity_flag] [varchar](50) NULL,
	[changed_by] [varchar](50) NULL,
	[created_datetime] [varchar](50) NULL,
	[last_update_datetime] [varchar](50) NULL,
	[rec_load_date] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [ecom].[manager_special] ADD  DEFAULT (getdate()) FOR [rec_load_date]
GO

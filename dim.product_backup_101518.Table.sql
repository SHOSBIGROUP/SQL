USE [sho_dw]
GO
/****** Object:  Table [dim].[product_backup_101518]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dim].[product_backup_101518]
GO
/****** Object:  Table [dim].[product_backup_101518]    Script Date: 10/26/2018 4:01:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[product_backup_101518](
	[prod_sku_sk_id] [int] NOT NULL,
	[cat_div_sk_id] [int] NULL,
	[inactive] [bit] NULL,
	[cat_nbr] [char](3) NOT NULL,
	[cat_name] [varchar](100) NULL,
	[div_nbr] [char](3) NOT NULL,
	[div_name] [varchar](100) NULL,
	[ln_nbr] [char](3) NULL,
	[ln_desc] [varchar](200) NULL,
	[sbl_nbr] [char](3) NULL,
	[sbl_desc] [varchar](200) NULL,
	[cls_nbr] [char](3) NULL,
	[cls_desc] [varchar](200) NULL,
	[item_nbr] [varchar](50) NULL,
	[item_desc] [varchar](200) NULL,
	[sku_nbr] [char](3) NULL,
	[upc_code] [varchar](50) NULL,
	[manufacturer_nbr] [varchar](50) NULL,
	[manufacturer_name] [varchar](100) NULL,
	[brand_id] [varchar](50) NULL,
	[brand_desc] [varchar](500) NULL,
	[contract_item_type] [varchar](5) NULL,
	[height] [float] NULL,
	[width] [float] NULL,
	[shipping_height] [decimal](11, 2) NULL,
	[shipping_width] [decimal](11, 2) NULL,
	[list_price] [decimal](11, 2) NULL,
	[regular_price] [decimal](11, 2) NULL,
	[msrp_price] [decimal](11, 2) NULL,
	[weighted_avg_cost] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL
) ON [PRIMARY]
GO

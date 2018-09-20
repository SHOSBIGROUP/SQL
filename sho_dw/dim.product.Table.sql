USE [sho_dw]
GO

ALTER TABLE [dim].[product] DROP CONSTRAINT [DF__product__rec_upd__12E8C319]
GO

ALTER TABLE [dim].[product] DROP CONSTRAINT [DF__product__rec_loa__11F49EE0]
GO

/****** Object:  Table [dim].[product]    Script Date: 9/19/2018 4:27:57 PM ******/
DROP TABLE [dim].[product]
GO

/****** Object:  Table [dim].[product]    Script Date: 9/19/2018 4:27:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dim].[product](
	[prod_sku_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[cat_div_sk_id] [int] NULL,
	[inactive] [bit] DEFAULT 0,
	[cat_nbr] [char](3) NULL,
	[cat_name] [varchar](100) NULL,
	[div_nbr] [char](3) NULL,
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
	[rec_exp_dt] [datetime] NULL,
 CONSTRAINT [PK__product__01898F06ABBB8754] PRIMARY KEY CLUSTERED 
(
	[prod_sku_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dim].[product] ADD  CONSTRAINT [DF__product__rec_loa__11F49EE0]  DEFAULT (getdate()) FOR [rec_load_dt]
GO

ALTER TABLE [dim].[product] ADD  CONSTRAINT [DF__product__rec_upd__12E8C319]  DEFAULT (getdate()) FOR [rec_upd_dt]
GO


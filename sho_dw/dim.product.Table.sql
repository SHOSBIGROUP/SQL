GO
/****** Object:  Table [dim].[product]    Script Date: 9/7/2018 1:56:16 PM ******/
DROP TABLE [dim].[product]
GO
/****** Object:  Table [dim].[product]    Script Date: 9/7/2018 1:56:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[product](
[prod_sku_sk_id] [int] IDENTITY(-1,1) NOT NULL,
[cat_div_sk_id] [int] NULL,
[cat_no] [char] (3)  NULL,
[cat_name] [varchar] (100) NULL,
[div_no] [char] (3)  NULL,
[div_name] [varchar](100) NULL,
[ln_no] [char] (3)  NULL,
[ln_desc] [varchar](200) NULL,
[sbl_no] [char] (3)  NULL,
[sbl_desc] [varchar](200) NULL,
[cls_no] [char] (3)  NULL,
[cls_desc] [varchar](200) NULL,
[item_no] [varchar] (20) NULL,
[item_desc] [varchar](200) NULL,
[sku_no] [char] (3) NULL,
[upc_code] [varchar] (20) NULL,
[manufacturer_no] [varchar](50) NULL,
[manufacturer_name] [varchar] (100) NULL,
[brand_id] [varchar](50) NULL,
[brand_desc] [varchar](500) NULL,
[contract_item_type] [varchar] (5) NULL,
[height] [float] NULL,
[width] [float] NULL,
[shipping_height] [decimal](11, 2) NULL,
[shipping_width] [decimal](11, 2) NULL,
[list_price] [decimal](11, 2) NULL,
[regular_price] [decimal](11, 2) NULL,
[msrp_price] [decimal](11, 2) NULL,
[weighted_avg_cost] [decimal](11, 2) NULL,
[rec_load_dt] [datetime] NOT NULL DEFAULT CURRENT_TIMESTAMP,
[rec_upd_dt] [datetime] NULL DEFAULT CURRENT_TIMESTAMP,
[item_active_flag] [varchar](5) NULL,
[rec_eff_dt] [datetime] NULL,
[rec_exp_dt] [datetime] NULL
PRIMARY KEY CLUSTERED 
(
[prod_sku_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



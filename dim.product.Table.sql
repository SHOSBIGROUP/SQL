ALTER TABLE [dim].[product] DROP CONSTRAINT [DF__product__rec_exp__4DB4832C]
GO
ALTER TABLE [dim].[product] DROP CONSTRAINT [DF__product__rec_eff__4CC05EF3]
GO
ALTER TABLE [dim].[product] DROP CONSTRAINT [DF__product__rec_loa__4BCC3ABA]
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
	[prd_irl_no] [int] NULL,
	[gro_no] [int] NULL,
	[cat_no] [int] NULL,
	[vbs_no] [int] NULL,
	[div_no] [int] NULL,
	[div_nm] [varchar](200) NULL,
	[ln_no] [int] NULL,
	[ln_ds] [varchar](200) NULL,
	[sbl_no] [int] NULL,
	[sbl_ds] [varchar](200) NULL,
	[cls_no] [int] NULL,
	[cls_ds] [varchar](200) NULL,
	[itm_no] [bigint] NULL,
	[prd_ds] [varchar](200) NULL,
	[vnd_hfc_no] [int] NULL,
	[vnd_hfc_nm] [varchar](200) NULL,
	[misc_inc_fl] [varchar](200) NULL,
	[itm_mfg_no] [varchar](200) NULL,
	[itm_prg_dt] [date] NULL,
	[brand_id] [varchar](50) NULL,
	[brand_desc] [varchar](1000) NULL,
	[nat_sll_prc] [float] NULL,
	[nat_cst_prc] [float] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[item_active_flag] [varchar](5) NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
	[cat_div_sk_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[prod_sku_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dim].[product] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[product] ADD  DEFAULT (getdate()) FOR [rec_eff_dt]
GO
ALTER TABLE [dim].[product] ADD  DEFAULT (NULL) FOR [rec_exp_dt]
GO

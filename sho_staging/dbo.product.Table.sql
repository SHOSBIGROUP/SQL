USE [sho_staging]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [DF__product__rec_upd__6CD828CA]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [DF__product__rec_loa__6BE40491]
GO
/****** Object:  Table [dbo].[product]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [dbo].[product]
GO
/****** Object:  Table [dbo].[product]    Script Date: 10/4/2018 3:53:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
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
	[itm_no] [int] NULL,
	[prd_ds] [varchar](200) NULL,
	[vnd_hfc_no] [int] NULL,
	[vnd_hfc_nm] [varchar](200) NULL,
	[misc_inc_fl] [varchar](200) NULL,
	[itm_mfg_no] [varchar](200) NULL,
	[itm_prg_dt] [date] NULL,
	[nat_sll_prc] [float] NULL,
	[nat_cst_prc] [float] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[prod_sku_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO

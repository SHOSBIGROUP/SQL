USE [sho_staging]
GO
ALTER TABLE [alex].[inventory_adjustments] DROP CONSTRAINT [DF__inventory__rec_l__4924D839]
GO
/****** Object:  Table [alex].[inventory_adjustments]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [alex].[inventory_adjustments]
GO
/****** Object:  Table [alex].[inventory_adjustments]    Script Date: 10/4/2018 3:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alex].[inventory_adjustments](
	[day_nbr] [varchar](15) NULL,
	[locn_nbr] [varchar](10) NULL,
	[prd_irl_no] [varchar](10) NULL,
	[div_no] [varchar](10) NULL,
	[itm_no] [varchar](10) NULL,
	[sku_no] [varchar](10) NULL,
	[inv_adj_typ_cd] [varchar](10) NULL,
	[inv_adj_un_qty] [varchar](10) NULL,
	[inv_adj_cst_dlr] [varchar](10) NULL,
	[inv_adj_sll_dlr] [varchar](10) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [alex].[inventory_adjustments] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

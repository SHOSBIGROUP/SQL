USE [sho_staging]
GO
/****** Object:  Table [alex].[inventory_adjustments]   Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [alex].[inventory_adjustments]
GO
/****** Object:  Table [alex].[inventory_adjustments]    Script Date: 9/11/2018 9:34:07 AM ******/
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
	[rec_load_dt] [datetime] NOT NULL DEFAULT CURRENT_TIMESTAMP
) ON [PRIMARY]
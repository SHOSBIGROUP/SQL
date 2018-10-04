USE [sho_staging]
GO
ALTER TABLE [alex].[sales] DROP CONSTRAINT [DF__sales__rec_load___473C8FC7]
GO
/****** Object:  Table [alex].[sales]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [alex].[sales]
GO
/****** Object:  Table [alex].[sales]    Script Date: 10/4/2018 3:52:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alex].[sales](
	[day_nbr] [varchar](15) NULL,
	[locn_nbr] [varchar](10) NULL,
	[prd_irl_no] [varchar](10) NULL,
	[div_no] [varchar](10) NULL,
	[itm_no] [varchar](10) NULL,
	[sku_no] [varchar](10) NULL,
	[sls_typ_cd] [varchar](10) NULL,
	[trs_typ_cd] [varchar](10) NULL,
	[sls_un_qty] [varchar](10) NULL,
	[sls_cst_dlr] [varchar](10) NULL,
	[sls_sll_dlr] [varchar](10) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [alex].[sales] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

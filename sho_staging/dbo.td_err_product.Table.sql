USE [sho_staging]
GO
/****** Object:  Table [dbo].[td_err_product]    Script Date: 10/26/2018 4:02:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_err_product](
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
	[error_code] [int] NULL,
	[error_column] [int] NULL
) ON [PRIMARY]
GO

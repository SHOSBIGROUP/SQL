USE [sho_dw]
GO
/****** Object:  Table [dim].[category_division_backup_092118]    Script Date: 10/4/2018 3:50:31 PM ******/
DROP TABLE [dim].[category_division_backup_092118]
GO
/****** Object:  Table [dim].[category_division_backup_092118]    Script Date: 10/4/2018 3:50:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[category_division_backup_092118](
	[cat_div_sk_id] [int] NOT NULL,
	[cat_nbr] [char](3) NULL,
	[cat_name] [varchar](50) NULL,
	[div_nbr] [char](3) NULL,
	[div_name] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL
) ON [PRIMARY]
GO

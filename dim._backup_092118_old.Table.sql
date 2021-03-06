USE [sho_dw]
GO
ALTER TABLE [dim].[_backup_092118_old] DROP CONSTRAINT [DF_category_division_rec_eff_dt]
GO
ALTER TABLE [dim].[_backup_092118_old] DROP CONSTRAINT [DF__category___rec_u__6A50C1DA]
GO
ALTER TABLE [dim].[_backup_092118_old] DROP CONSTRAINT [DF__category___rec_l__695C9DA1]
GO
/****** Object:  Index [IX_category_division_cat_nbr_div_nbr]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [IX_category_division_cat_nbr_div_nbr] ON [dim].[_backup_092118_old]
GO
/****** Object:  Table [dim].[_backup_092118_old]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dim].[_backup_092118_old]
GO
/****** Object:  Table [dim].[_backup_092118_old]    Script Date: 10/26/2018 4:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[_backup_092118_old](
	[cat_div_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[cat_nbr] [char](3) NULL,
	[cat_name] [varchar](50) NULL,
	[div_nbr] [char](3) NULL,
	[div_name] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
 CONSTRAINT [PK__category__D4325CE8E4C5FADC] PRIMARY KEY CLUSTERED 
(
	[cat_div_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_category_division_cat_nbr_div_nbr]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_category_division_cat_nbr_div_nbr] ON [dim].[_backup_092118_old]
(
	[cat_nbr] ASC,
	[div_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
ALTER TABLE [dim].[_backup_092118_old] ADD  CONSTRAINT [DF__category___rec_l__695C9DA1]  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[_backup_092118_old] ADD  CONSTRAINT [DF__category___rec_u__6A50C1DA]  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [dim].[_backup_092118_old] ADD  CONSTRAINT [DF_category_division_rec_eff_dt]  DEFAULT (getdate()) FOR [rec_eff_dt]
GO

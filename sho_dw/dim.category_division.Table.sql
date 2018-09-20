USE [sho_dw]
GO
/****** Object:  Table [dim].[category_division]    Script Date: 9/20/2018 11:56:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[category_division](
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
/****** Object:  Index [IX_category_division_cat_nbr_div_nbr]    Script Date: 9/20/2018 11:56:26 AM ******/
CREATE NONCLUSTERED INDEX [IX_category_division_cat_nbr_div_nbr] ON [dim].[category_division]
(
	[cat_nbr] ASC,
	[div_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dim].[category_division] ADD  CONSTRAINT [DF__category___rec_l__695C9DA1]  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[category_division] ADD  CONSTRAINT [DF__category___rec_u__6A50C1DA]  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [dim].[category_division] ADD  CONSTRAINT [DF_category_division_rec_eff_dt]  DEFAULT (getdate()) FOR [rec_eff_dt]
GO




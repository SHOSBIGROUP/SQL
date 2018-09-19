USE [sho_dw]
GO

ALTER TABLE [dim].[category_division] DROP CONSTRAINT [DF_category_division_rec_eff_dt]
GO

ALTER TABLE [dim].[category_division] DROP CONSTRAINT [DF__category___rec_u__6A50C1DA]
GO

ALTER TABLE [dim].[category_division] DROP CONSTRAINT [DF__category___rec_l__695C9DA1]
GO

/****** Object:  Table [dim].[category_division]    Script Date: 9/19/2018 2:54:40 PM ******/
DROP TABLE [dim].[category_division]
GO

/****** Object:  Table [dim].[category_division]    Script Date: 9/19/2018 2:54:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dim].[category_division](
	[cat_div_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[cat_nbr] [int] NOT NULL,
	[cat_nm] [varchar](50) NULL,
	[div_nbr] [int] NOT NULL,
	[div_nm] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_div_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dim].[category_division] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

ALTER TABLE [dim].[category_division] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO

ALTER TABLE [dim].[category_division] ADD  DEFAULT (getdate()) FOR [rec_eff_dt]
GO




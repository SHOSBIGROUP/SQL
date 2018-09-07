USE [sho_dw]
GO
ALTER TABLE [dim].[category_division] DROP CONSTRAINT [DF__category___rec_e__62AFA012]
GO
ALTER TABLE [dim].[category_division] DROP CONSTRAINT [DF__category___rec_e__61BB7BD9]
GO
ALTER TABLE [dim].[category_division] DROP CONSTRAINT [DF__category___rec_l__60C757A0]
GO
/****** Object:  Table [dim].[category_division]    Script Date: 9/7/2018 11:37:47 AM ******/
DROP TABLE [dim].[category_division]
GO
/****** Object:  Table [dim].[category_division]    Script Date: 9/7/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[category_division](
	[cat_div_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[vbs_nbr] [int] NOT NULL,
	[vbs_nm] [varchar](50) NULL,
	[cat_nbr] [int] NOT NULL,
	[cat_nm] [varchar](50) NULL,
	[div_nbr] [int] NOT NULL,
	[div_nm] [varchar](50) NULL,
	[rec_load_dt] [datetime] NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_div_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dim].[category_division] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[category_division] ADD  DEFAULT (getdate()) FOR [rec_eff_dt]
GO
ALTER TABLE [dim].[category_division] ADD  DEFAULT ('9999-12-31') FOR [rec_exp_dt]
GO

USE [sho_staging]
GO
ALTER TABLE [finance].[div_format_daily_plan] DROP CONSTRAINT [DF__div_forma__rec_l__7FEAFD3E]
GO
/****** Object:  Table [finance].[div_format_daily_plan]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [finance].[div_format_daily_plan]
GO
/****** Object:  Table [finance].[div_format_daily_plan]    Script Date: 9/11/2018 9:34:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finance].[div_format_daily_plan](
	[div_cd] [varchar](10) NULL,
	[div_desc] [varchar](50) NULL,
	[store_format] [varchar](10) NULL,
	[plan_amount_month] [varchar](25) NULL,
	[day_of_month] [varchar](10) NULL,
	[day_nbr] [varchar](10) NULL,
	[day_nbr_2] [varchar](10) NULL,
	[daily_sales] [varchar](25) NULL,
	[rec_load_dt] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [finance].[div_format_daily_plan] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

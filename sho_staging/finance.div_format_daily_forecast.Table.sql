USE [sho_staging]
GO
ALTER TABLE [finance].[div_format_daily_forecast] DROP CONSTRAINT [DF__div_forma__rec_l__02C769E9]
GO
/****** Object:  Table [finance].[div_format_daily_forecast]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [finance].[div_format_daily_forecast]
GO
/****** Object:  Table [finance].[div_format_daily_forecast]    Script Date: 10/4/2018 3:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finance].[div_format_daily_forecast](
	[div_cd] [varchar](10) NULL,
	[div_desc] [varchar](50) NULL,
	[store_format] [varchar](10) NULL,
	[forecast_amount_month] [varchar](25) NULL,
	[day_of_month] [varchar](10) NULL,
	[day_nbr] [varchar](10) NULL,
	[day_nbr_2] [varchar](10) NULL,
	[daily_sales] [varchar](25) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [finance].[div_format_daily_forecast] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

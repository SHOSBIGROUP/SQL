USE [sho_staging]
GO
/****** Object:  Table [finance].[div_format_daily_forecast_backup_100218]    Script Date: 10/26/2018 4:02:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finance].[div_format_daily_forecast_backup_100218](
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

USE [sho_staging]
GO
/****** Object:  Table [finance].[day_location_gp_plan]    Script Date: 10/24/2018 4:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finance].[day_location_gp_plan](
	[pos_nbr] [varchar](10) NULL,
	[eis_nbr] [varchar](10) NULL,
	[store_name] [varchar](100) NULL,
	[district_nbr] [varchar](10) NULL,
	[region_nbr] [varchar](10) NULL,
	[store_format] [varchar](10) NULL,
	[date_opened] [varchar](10) NULL,
	[gp_plan_total_month] [varchar](25) NULL,
	[day_of_month] [varchar](10) NULL,
	[day_nbr] [varchar](10) NULL,
	[day_nbr_2] [varchar](10) NULL,
	[gp_plan] [varchar](25) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [finance].[day_location_gp_plan] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

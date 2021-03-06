USE [sho_staging]
GO
/****** Object:  Table [finance].[day_location_gp_plan]    Script Date: 10/26/2018 4:02:38 PM ******/
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
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_day_location_gp_plan_pos_nbr]    Script Date: 10/26/2018 4:02:38 PM ******/
CREATE CLUSTERED INDEX [IX_day_location_gp_plan_pos_nbr] ON [finance].[day_location_gp_plan]
(
	[pos_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_day_location_gp_plan_pos_nbr_day_of_month]    Script Date: 10/26/2018 4:02:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_day_location_gp_plan_pos_nbr_day_of_month] ON [finance].[day_location_gp_plan]
(
	[day_of_month] ASC,
	[pos_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_day_location_sales_plan_day_of_month_gp_plan]    Script Date: 10/26/2018 4:02:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_day_location_sales_plan_day_of_month_gp_plan] ON [finance].[day_location_gp_plan]
(
	[day_of_month] ASC,
	[gp_plan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
ALTER TABLE [finance].[day_location_gp_plan] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

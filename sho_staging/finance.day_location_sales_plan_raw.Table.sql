USE [sho_staging]
GO
/****** Object:  Table [finance].[day_location_sales_plan_raw]    Script Date: 10/26/2018 4:02:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finance].[day_location_sales_plan_raw](
	[pos_nbr] [varchar](50) NULL,
	[eis_nbr] [varchar](50) NULL,
	[store_name] [varchar](50) NULL,
	[district_nbr] [varchar](50) NULL,
	[region_nbr] [varchar](50) NULL,
	[store_format] [varchar](50) NULL,
	[date_opened] [varchar](50) NULL,
	[gp_plan_total_month] [varchar](50) NULL,
	[day_of_month] [varchar](50) NULL,
	[day_nbr] [varchar](50) NULL,
	[day_nbr_2] [varchar](50) NULL,
	[daily_sales] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_day_location_sales_plan_raw_day_of_month]    Script Date: 10/26/2018 4:02:39 PM ******/
CREATE CLUSTERED INDEX [IX_day_location_sales_plan_raw_day_of_month] ON [finance].[day_location_sales_plan_raw]
(
	[day_of_month] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO

USE [sho_staging]
GO
/****** Object:  Table [finance].[day_location_gp_plan_raw]    Script Date: 10/26/2018 4:02:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finance].[day_location_gp_plan_raw](
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
	[gp_plan] [varchar](50) NULL,
	[Column 12] [varchar](50) NULL,
	[Column 13] [varchar](50) NULL,
	[Column 14] [varchar](50) NULL,
	[Column 15] [varchar](50) NULL,
	[Column 16] [varchar](50) NULL,
	[Column 17] [varchar](50) NULL,
	[Column 18] [varchar](50) NULL,
	[Column 19] [varchar](50) NULL,
	[Column 20] [varchar](50) NULL,
	[Column 21] [varchar](50) NULL,
	[Column 22] [varchar](50) NULL,
	[Column 23] [varchar](50) NULL,
	[Column 24] [varchar](50) NULL,
	[Column 25] [varchar](50) NULL,
	[Column 26] [varchar](50) NULL,
	[Column 27] [varchar](50) NULL,
	[Column 28] [varchar](50) NULL,
	[Column 29] [varchar](50) NULL,
	[Column 30] [varchar](50) NULL,
	[Column 31] [varchar](50) NULL,
	[Column 32] [varchar](50) NULL,
	[Column 33] [varchar](50) NULL,
	[Column 34] [varchar](50) NULL,
	[Column 35] [varchar](50) NULL,
	[Column 36] [varchar](50) NULL,
	[Column 37] [varchar](50) NULL,
	[Column 38] [varchar](50) NULL,
	[Column 39] [varchar](50) NULL,
	[Column 40] [varchar](50) NULL,
	[Column 41] [varchar](50) NULL,
	[Column 42] [varchar](50) NULL,
	[Column 43] [varchar](50) NULL,
	[Column 44] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_day_location_gp_plan_raw_pos_nbr_day_of_month]    Script Date: 10/26/2018 4:02:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_day_location_gp_plan_raw_pos_nbr_day_of_month] ON [finance].[day_location_gp_plan_raw]
(
	[day_of_month] ASC,
	[pos_nbr] ASC
)
INCLUDE ( 	[eis_nbr],
	[store_name],
	[district_nbr],
	[region_nbr],
	[store_format],
	[date_opened],
	[gp_plan_total_month],
	[day_nbr],
	[day_nbr_2],
	[gp_plan]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO

USE [sho_staging]
GO
/****** Object:  Table [dbo].[Plan by store by day - Sep18(for BI)]    Script Date: 10/26/2018 4:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plan by store by day - Sep18(for BI)](
	[pos_nbr] [varchar](50) NULL,
	[eis_nbr] [varchar](50) NULL,
	[store_name] [varchar](50) NULL,
	[district_nbr] [varchar](50) NULL,
	[region_nbr] [varchar](50) NULL,
	[store_format] [varchar](50) NULL,
	[date_opened] [varchar](50) NULL,
	[plan_total_month] [varchar](50) NULL,
	[day_of_month] [varchar](50) NULL,
	[day_nbr] [varchar](50) NULL,
	[day_nbr_2] [varchar](50) NULL,
	[daily_sales] [varchar](50) NULL
) ON [PRIMARY]
GO

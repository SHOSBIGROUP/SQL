USE [sho_staging]
GO
/****** Object:  Table [finance].[imu_weekly_lookup]    Script Date: 10/26/2018 4:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finance].[imu_weekly_lookup](
	[store_format] [varchar](50) NULL,
	[bunit_div] [varchar](50) NULL,
	[bunit_div_desc] [varchar](100) NULL,
	[bunit_div_desc2] [varchar](100) NULL,
	[imu_current_week] [varchar](50) NULL,
	[imu_mtd] [varchar](50) NULL,
	[cost_complement_current_week] [varchar](50) NULL,
	[cost_complement_mtd] [varchar](50) NULL,
	[customer_adjustment_current_week] [varchar](50) NULL,
	[customer_adjeustment_mtd] [varchar](50) NULL,
	[fiscal_year] [varchar](50) NULL,
	[fiscal_week] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [finance].[imu_weekly_lookup] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

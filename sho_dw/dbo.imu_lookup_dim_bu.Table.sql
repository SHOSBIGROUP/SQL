USE [sho_dw]
GO
ALTER TABLE [dbo].[imu_lookup_dim_bu] DROP CONSTRAINT [DF__imu_looku__rec_u__09746778]
GO
ALTER TABLE [dbo].[imu_lookup_dim_bu] DROP CONSTRAINT [DF__imu_looku__rec_l__0880433F]
GO
/****** Object:  Table [dbo].[imu_lookup_dim_bu]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dbo].[imu_lookup_dim_bu]
GO
/****** Object:  Table [dbo].[imu_lookup_dim_bu]    Script Date: 11/13/2018 3:54:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imu_lookup_dim_bu](
	[imu_lookup_dim_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[Fiscal_year] [varchar](10) NULL,
	[Fiscal_month] [varchar](10) NULL,
	[Fiscal_week] [varchar](10) NULL,
	[Store_Format] [varchar](50) NULL,
	[BUnit_Div] [varchar](50) NULL,
	[BUnit_Div_Desc] [varchar](500) NULL,
	[BUnit_Div_Desc2] [varchar](500) NULL,
	[IMU_Current_Week] [varchar](50) NULL,
	[IMU_MTD] [varchar](50) NULL,
	[Cost_Complement_Current_Week] [varchar](50) NULL,
	[Cost_Complement_MTD] [varchar](50) NULL,
	[Customer_Adjustment_Current_Week] [varchar](50) NULL,
	[Customer_Adjeustment_MTD] [varchar](50) NULL,
	[rec_load_dt] [date] NULL,
	[rec_upd_dt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[imu_lookup_dim_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[imu_lookup_dim_bu] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dbo].[imu_lookup_dim_bu] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO

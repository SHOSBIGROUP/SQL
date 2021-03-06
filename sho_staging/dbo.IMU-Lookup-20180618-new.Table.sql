USE [sho_staging]
GO
/****** Object:  Table [dbo].[IMU-Lookup-20180618-new]    Script Date: 10/26/2018 4:02:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMU-Lookup-20180618-new](
	[fiscal_year] [int] NOT NULL,
	[fiscal_month] [int] NOT NULL,
	[fiscal_week] [int] NOT NULL,
	[Format] [nvarchar](50) NOT NULL,
	[Business_Unit_Division] [nvarchar](50) NOT NULL,
	[Business_Unit_Division_Description] [nvarchar](50) NOT NULL,
	[Business_Unit_Division_Description_2] [nvarchar](50) NOT NULL,
	[IMU_Current_Week] [float] NOT NULL,
	[IMU_MTD] [float] NOT NULL,
	[Cost_Complement_Current_Week] [float] NOT NULL,
	[Cost_Complement_MTD] [float] NOT NULL,
	[Customer_Adjustment_Current_Week] [float] NOT NULL,
	[Customer_Adjeustment_MTD] [float] NOT NULL
) ON [PRIMARY]
GO

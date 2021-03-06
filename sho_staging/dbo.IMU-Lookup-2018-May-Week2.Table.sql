USE [sho_staging]
GO
/****** Object:  Table [dbo].[IMU-Lookup-2018-May-Week2]    Script Date: 10/26/2018 4:02:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMU-Lookup-2018-May-Week2](
	[Fiscal_year] [int] NULL,
	[Fiscal_month] [int] NULL,
	[Fiscal_week] [int] NULL,
	[Store_Format] [nvarchar](50) NULL,
	[BUnit_Div] [nvarchar](50) NULL,
	[BUnit_Div_Desc] [nvarchar](50) NULL,
	[BUnit_Div_Desc2] [nvarchar](50) NULL,
	[IMU_Current_Week] [float] NULL,
	[IMU_MTD] [float] NULL,
	[Cost_Complement_Current_Week] [float] NULL,
	[Cost_Complement_MTD] [float] NULL,
	[Customer_Adjustment_Current_Week] [float] NULL,
	[Customer_Adjustment_MTD] [float] NULL
) ON [PRIMARY]
GO

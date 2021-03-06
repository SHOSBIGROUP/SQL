USE [sho_staging]
GO
/****** Object:  Table [dbo].[IMU-Lookup-20180618]    Script Date: 10/26/2018 4:02:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMU-Lookup-20180618](
	[ï»¿fiscal_year] [varchar](50) NULL,
	[fiscal_month] [varchar](50) NULL,
	[fiscal_week] [varchar](50) NULL,
	[Format] [varchar](50) NULL,
	[Business Unit Division] [varchar](50) NULL,
	[Business Unit Division Description] [varchar](50) NULL,
	[Business Unit Division Description (2)] [varchar](50) NULL,
	[IMU_Current_Week] [varchar](50) NULL,
	[IMU_MTD] [varchar](50) NULL,
	[Cost_Complement_Current_Week] [varchar](50) NULL,
	[Cost_Complement_MTD] [varchar](50) NULL,
	[Customer_Adjustment_Current_Week] [varchar](50) NULL,
	[Customer_Adjeustment_MTD] [varchar](50) NULL,
	[Column 13] [varchar](50) NULL,
	[Column 14] [varchar](50) NULL,
	[Column 15] [varchar](50) NULL,
	[Column 16] [varchar](50) NULL,
	[Column 17] [varchar](50) NULL,
	[Column 18] [varchar](50) NULL,
	[Column 19] [varchar](50) NULL,
	[Column 20] [varchar](50) NULL
) ON [PRIMARY]
GO

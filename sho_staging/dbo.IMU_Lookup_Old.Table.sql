USE [sho_staging]
GO
/****** Object:  Table [dbo].[IMU_Lookup_Old]    Script Date: 10/26/2018 4:02:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMU_Lookup_Old](
	[Store_format] [varchar](250) NULL,
	[Div] [varchar](250) NULL,
	[Divname] [varchar](250) NULL,
	[div_divname] [varchar](250) NULL,
	[IMU_Current_Week] [float] NULL,
	[Week_1] [float] NULL,
	[Week_2] [float] NULL,
	[Week_3] [float] NULL,
	[Week_4] [float] NULL,
	[Week_5] [float] NULL,
	[MTD] [float] NULL,
	[Cost_Current_Week] [float] NULL,
	[Week_1_12] [float] NULL,
	[Week_2_13] [float] NULL,
	[Week_3_14] [float] NULL,
	[Week_4_15] [float] NULL,
	[Week_5_16] [float] NULL,
	[MTD_17] [float] NULL,
	[Customer_Adjustment_Current_Week] [float] NULL,
	[Week_1_19] [float] NULL,
	[Week_2_20] [float] NULL,
	[Week_3_21] [float] NULL,
	[Week_4_22] [float] NULL,
	[Week_5_23] [float] NULL,
	[MTD_24] [float] NULL
) ON [PRIMARY]
GO

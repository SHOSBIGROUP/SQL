USE [sho_staging]
GO
/****** Object:  Table [dbo].[excel_dly_plan_forecast_sales]    Script Date: 10/26/2018 4:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[excel_dly_plan_forecast_sales](
	[POS] [int] NULL,
	[EIS] [int] NULL,
	[SN] [varchar](200) NULL,
	[District_Number_2018_Alignment] [int] NULL,
	[Region_2018_Alignment] [int] NULL,
	[Store_Format] [varchar](25) NULL,
	[Date_Opened] [date] NULL,
	[Planned_FC_Date] [date] NULL,
	[Planned_Amt] [int] NULL,
	[FC_Amt] [float] NULL
) ON [PRIMARY]
GO

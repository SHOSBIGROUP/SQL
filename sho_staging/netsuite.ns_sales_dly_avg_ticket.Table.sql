USE [sho_staging]
GO
/****** Object:  Table [netsuite].[ns_sales_dly_avg_ticket]    Script Date: 10/24/2018 4:30:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[ns_sales_dly_avg_ticket](
	[Date] [date] NULL,
	[Location] [int] NULL,
	[Div_No] [int] NULL,
	[Merchandise_Sales_] [float] NULL,
	[Units] [int] NULL
) ON [PRIMARY]
GO

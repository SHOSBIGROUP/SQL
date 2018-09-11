USE [sho_staging]
GO
/****** Object:  Table [netsuite].[ns_sales_dly_avg_ticket]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [netsuite].[ns_sales_dly_avg_ticket]
GO
/****** Object:  Table [netsuite].[ns_sales_dly_avg_ticket]    Script Date: 9/11/2018 9:34:08 AM ******/
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

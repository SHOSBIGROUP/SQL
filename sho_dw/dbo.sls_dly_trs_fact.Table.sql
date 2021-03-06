USE [sho_dw]
GO
/****** Object:  Table [dbo].[sls_dly_trs_fact]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dbo].[sls_dly_trs_fact]
GO
/****** Object:  Table [dbo].[sls_dly_trs_fact]    Script Date: 11/13/2018 3:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sls_dly_trs_fact](
	[Trs_Dt] [date] NULL,
	[Location] [int] NULL,
	[Net_Sales] [float] NULL,
	[Net_Units] [int] NULL,
	[PA_Sales] [float] NULL,
	[PA_Units] [int] NULL,
	[PAM_Sales] [float] NULL,
	[PAM_Units] [int] NULL,
	[SPP_Sales] [float] NULL,
	[SPP_Units] [int] NULL,
	[Lease_Sales] [float] NULL,
	[Lease_Units] [int] NULL,
	[Bulk_Sales] [float] NULL,
	[Bulk_Units] [int] NULL,
	[Sears_Credit_Sales] [float] NULL,
	[Other_Credit_Sales] [float] NULL,
	[Kenmore_Sales] [float] NULL,
	[Kenmore_Units] [int] NULL,
	[Total_Md_Amt] [float] NULL,
	[Craftsman_Sales] [float] NULL,
	[Carftsman_Units] [int] NULL,
	[Avg_Ticket_sales] [float] NULL,
	[Avg_Ticket_Units] [int] NULL,
	[Plan_Amt] [float] NULL,
	[Forecast_Amt] [float] NULL,
	[Load_Dt] [date] NULL,
	[Created_By] [varchar](200) NULL,
	[GP_Amt] [float] NULL
) ON [PRIMARY]
GO

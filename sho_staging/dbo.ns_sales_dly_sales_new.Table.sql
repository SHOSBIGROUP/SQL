USE [sho_staging]
GO
/****** Object:  Table [dbo].[ns_sales_dly_sales_new]    Script Date: 10/26/2018 4:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ns_sales_dly_sales_new](
	[Trs_Date] [date] NULL,
	[Store_Location] [int] NULL,
	[Div_No] [int] NULL,
	[Merchandise_Sales_] [float] NULL,
	[Merchandise_Units] [int] NULL,
	[PA_S_Sold] [float] NULL,
	[PA_Units_Sold] [int] NULL,
	[PAM___Value] [float] NULL,
	[PAM_Units] [int] NULL,
	[SPP_S_Sold] [float] NULL,
	[SPP_Units_Sold] [int] NULL,
	[SPP_Eligible__Value] [float] NULL,
	[SPP_Eligible_Units] [int] NULL,
	[Kenmore_sales] [float] NULL,
	[Kenmore_Units] [int] NULL,
	[Craftsmen_Sales] [float] NULL,
	[Craftsmen_Units] [int] NULL,
	[TMD] [float] NULL,
	[Bulk_Sales] [float] NULL,
	[Bulk_Units] [int] NULL,
	[_3H_Ecom] [float] NULL,
	[_3H_Ecom_Units] [int] NULL,
	[Outlet_Ecom] [float] NULL,
	[Outlet_Ecom_units] [int] NULL,
	[Sears_com] [float] NULL,
	[Sears_com_Units] [int] NULL
) ON [PRIMARY]
GO

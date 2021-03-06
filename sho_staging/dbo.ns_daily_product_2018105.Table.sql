USE [sho_staging]
GO
/****** Object:  Table [dbo].[ns_daily_product_2018105]    Script Date: 10/26/2018 4:02:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ns_daily_product_2018105](
	[Date_Created] [datetime2](7) NOT NULL,
	[Inactive] [nvarchar](50) NOT NULL,
	[Contract_Item_Type] [nvarchar](50) NULL,
	[Item_Brand] [nvarchar](50) NULL,
	[Product_Brand_ID] [nvarchar](1) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[Item_Mfgn_Number] [nvarchar](50) NULL,
	[UPC_Code] [nvarchar](50) NULL,
	[SKU_] [int] NULL,
	[Item_Name] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[Category_No] [int] NULL,
	[Category_Name] [nvarchar](50) NULL,
	[Division_No] [int] NULL,
	[Division_Name] [nvarchar](50) NULL,
	[Line_No] [int] NULL,
	[Line_Name] [nvarchar](50) NULL,
	[SubLine_No] [int] NULL,
	[SubLine_Name] [nvarchar](50) NULL,
	[Class_No] [int] NULL,
	[Class_Name] [nvarchar](50) NULL,
	[Regular_Price__3H_] [float] NULL,
	[List_Price_Outlet_] [float] NULL,
	[MSRP] [float] NULL,
	[Average_Cost] [nvarchar](50) NULL,
	[Height_in__] [nvarchar](1) NULL,
	[Shipping_Height] [float] NULL,
	[Width__in__] [nvarchar](1) NULL,
	[Shipping_Width] [float] NULL,
	[Item_Designation] [nvarchar](50) NULL
) ON [PRIMARY]
GO

USE [sho_staging]
GO
/****** Object:  Table [dbo].[SHOBIMerchHierarchysearchResults925]    Script Date: 10/26/2018 4:02:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHOBIMerchHierarchysearchResults925](
	[Internal_ID] [int] NULL,
	[Date_Created] [datetime2](7) NULL,
	[Inactive] [varchar](50) NULL,
	[Contract_Item_Type] [varchar](50) NULL,
	[Item_Brand] [nvarchar](500) NULL,
	[Product_Brand_ID] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[Item_Mfgn_Number] [varchar](50) NULL,
	[UPC_Code] [nvarchar](500) NULL,
	[SKU__] [varchar](50) NULL,
	[Item_No] [varchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Category_No] [int] NULL,
	[Category_Name] [nvarchar](500) NULL,
	[Division__] [int] NULL,
	[Div_No] [int] NULL,
	[Div_Name] [nvarchar](500) NULL,
	[Line_No] [int] NULL,
	[Line_Name] [nvarchar](500) NULL,
	[Subline_No] [int] NULL,
	[Subline_Name] [nvarchar](500) NULL,
	[Class_No] [int] NULL,
	[Class_Name] [nvarchar](500) NULL,
	[Regular_Price__3H_] [nvarchar](500) NULL,
	[List_Price__Outlet_] [nvarchar](500) NULL,
	[MSRP] [nvarchar](500) NULL,
	[Average_Cost] [nvarchar](500) NULL,
	[Height__in__] [nvarchar](1) NULL,
	[Shipping_Height] [nvarchar](500) NULL,
	[Width__in__] [nvarchar](100) NULL,
	[Shipping_Width] [nvarchar](500) NULL
) ON [PRIMARY]
GO

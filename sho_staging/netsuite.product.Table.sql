USE [sho_staging]
GO
/****** Object:  Table [netsuite].[product]    Script Date: 9/7/2018 1:56:16 PM ******/
DROP TABLE [netsuite].[product]
GO
/****** Object:  Table [netsuite].[product]    Script Date: 9/7/2018 1:56:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[product](
[Date Created] [varchar] (20) NULL,
[Inactive] [varchar] (5) NULL,
[Contract Item Type] [varchar] (50) NULL,
[Item Brand] [varchar] (50) NULL,
[Product Brand ID] [varchar] (20) NULL,
[Manufacturer] [varchar] (50) NULL,
[Item Mfgn Number] [varchar] (20) NULL,
[UPC Code] [varchar] (20) NULL,
[SKU #] [varchar] (10) NULL,
[Item No] [varchar] (20) NULL,
[Description] [varchar] (100) NULL,
[Category No] [varchar] (10) NULL,
[Category Name] [varchar] (50) NULL,
[Division #] [varchar] (10) NULL,
[Div No] [varchar] (10) NULL,
[Div Name] [varchar] (50) NULL,
[Line No] [varchar] (20) NULL,
[Line Name] [varchar] (50) NULL,
[Subline No] [varchar] (20) NULL,
[Subline Name] [varchar] (50) NULL,
[Class No] [varchar] (20) NULL,
[Class Name] [varchar] (50) NULL,
[Regular Price (3H)] [varchar] (20) NULL,
[List Price (Outlet)] [varchar] (20) NULL,
[MSRP] [varchar] (20) NULL,
[Average Cost] [varchar] (20) NULL,
[Height (in.)] [varchar] (10) NULL,
[Shipping Height] [varchar] (10) NULL,
[Width (in.)] [varchar] (10) NULL,
[Shipping Width] [varchar] (10) NULL,
[rec_load_dt] [datetime] NOT NULL DEFAULT CURRENT_TIMESTAMP
 ) ON [PRIMARY]



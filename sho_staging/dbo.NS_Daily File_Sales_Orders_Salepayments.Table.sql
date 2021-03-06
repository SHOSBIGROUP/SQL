USE [sho_staging]
GO
/****** Object:  Table [dbo].[NS_Daily File_Sales_Orders_Salepayments]    Script Date: 10/26/2018 4:02:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NS_Daily File_Sales_Orders_Salepayments](
	[Internal_ID] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Date_Closed] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Document_Number] [varchar](50) NOT NULL,
	[Payment_Method] [nvarchar](50) NULL,
	[Store] [varchar](50) NULL,
	[Format] [nvarchar](50) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Account] [nvarchar](100) NOT NULL,
	[SO_Document_Number] [nvarchar](50) NULL,
	[Tran_Date] [nvarchar](50) NULL,
	[Order_Amount] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO

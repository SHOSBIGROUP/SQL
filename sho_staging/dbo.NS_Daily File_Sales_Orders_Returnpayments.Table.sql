USE [sho_staging]
GO
/****** Object:  Table [dbo].[NS_Daily File_Sales_Orders_Returnpayments]    Script Date: 10/26/2018 4:02:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NS_Daily File_Sales_Orders_Returnpayments](
	[Internal_ID] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Date_Closed] [datetime2](7) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](1) NULL,
	[Document_Number] [varchar](50) NULL,
	[Payment_Method] [nvarchar](50) NOT NULL,
	[Store] [varchar](50) NULL,
	[Format] [nvarchar](50) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Applying_Transaction] [nvarchar](50) NOT NULL,
	[Tran_Date] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO

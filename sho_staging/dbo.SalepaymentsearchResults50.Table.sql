USE [sho_staging]
GO
/****** Object:  Table [dbo].[SalepaymentsearchResults50]    Script Date: 10/26/2018 4:02:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalepaymentsearchResults50](
	[Internal_ID] [varchar](50) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Date_Closed] [datetime2](7) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Document_Number] [nvarchar](50) NOT NULL,
	[Payment_Method] [nvarchar](50) NULL,
	[Store] [varchar](50) NULL,
	[Format] [nvarchar](50) NULL,
	[Amount] [decimal](18, 10) NOT NULL,
	[Account] [nvarchar](100) NOT NULL,
	[Document_Number1] [nvarchar](50) NOT NULL,
	[Tran_Date] [datetime2](7) NOT NULL,
	[Amount1] [decimal](18, 10) NOT NULL
) ON [PRIMARY]
GO

USE [sho_staging]
GO
/****** Object:  Table [dbo].[ReturnpaymentsearchResults555]    Script Date: 10/26/2018 4:02:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnpaymentsearchResults555](
	[Internal_ID] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Date_Closed] [datetime2](7) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](1) NULL,
	[Document_Number] [int] NULL,
	[Payment_Method] [nvarchar](50) NOT NULL,
	[Store] [int] NULL,
	[Format] [nvarchar](50) NULL,
	[Amount] [decimal](18, 10) NOT NULL,
	[Applying_Transaction] [nvarchar](50) NOT NULL,
	[Tran_Date] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO

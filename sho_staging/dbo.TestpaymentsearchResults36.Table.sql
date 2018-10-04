USE [sho_staging]
GO
/****** Object:  Table [dbo].[TestpaymentsearchResults36]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [dbo].[TestpaymentsearchResults36]
GO
/****** Object:  Table [dbo].[TestpaymentsearchResults36]    Script Date: 10/4/2018 3:53:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestpaymentsearchResults36](
	[Internal ID] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Date Closed] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Document Number] [varchar](50) NULL,
	[Payment Method] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[Account] [varchar](100) NULL,
	[Created From] [varchar](100) NULL,
	[Amount_1] [varchar](50) NULL
) ON [PRIMARY]
GO

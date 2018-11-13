USE [sho_staging]
GO
/****** Object:  Table [dbo].[HeaderleveltrasactionResults626]    Script Date: 10/26/2018 4:02:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeaderleveltrasactionResults626](
	[Internal_ID] [int] NOT NULL,
	[Date_Created] [datetime2](7) NOT NULL,
	[Date_Closed] [datetime2](7) NOT NULL,
	[Document_Number] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Transaction_Source] [nvarchar](50) NOT NULL,
	[Store] [nvarchar](50) NULL,
	[Format] [nvarchar](50) NULL,
	[Amount] [decimal](18, 10) NOT NULL,
	[Amount__Net_] [decimal](18, 10) NOT NULL,
	[Amount__Shipping_] [decimal](18, 10) NOT NULL,
	[Amount__Tax_] [decimal](18, 10) NOT NULL,
	[Amount__Transaction_Total_] [decimal](18, 10) NOT NULL,
	[Amount_Discount] [decimal](18, 10) NOT NULL
) ON [PRIMARY]
GO

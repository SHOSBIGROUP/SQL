USE [sho_staging]
GO
/****** Object:  Table [dbo].[LineleveltransactionResults276]    Script Date: 10/26/2018 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineleveltransactionResults276](
	[Internal_ID] [int] NOT NULL,
	[Date_Created] [datetime2](7) NOT NULL,
	[Date_Closed] [datetime2](7) NOT NULL,
	[Document_Number] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Transaction_Source] [nvarchar](50) NOT NULL,
	[Promotion] [nvarchar](50) NULL,
	[Applied_Promotion_Status] [nvarchar](50) NULL,
	[Store] [nvarchar](50) NULL,
	[Format] [nvarchar](50) NULL,
	[Item] [nvarchar](50) NOT NULL,
	[Category_No] [varchar](50) NULL,
	[Category_Nm] [nvarchar](50) NULL,
	[Div_No] [varchar](50) NULL,
	[Div_Nm] [nvarchar](50) NULL,
	[Line__No] [varchar](50) NULL,
	[Line_Nm] [nvarchar](50) NULL,
	[Subline_No] [varchar](50) NULL,
	[subline_Nm] [nvarchar](50) NULL,
	[Class_No] [varchar](50) NULL,
	[Class_Nm] [nvarchar](50) NULL,
	[Amount] [decimal](18, 10) NOT NULL,
	[Amount__Net_] [decimal](18, 10) NOT NULL,
	[Amount__Tax_] [decimal](18, 10) NOT NULL
) ON [PRIMARY]
GO

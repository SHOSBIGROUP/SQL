USE [sho_staging]
GO
/****** Object:  Table [dbo].[SHC to SHO Hierarchy Map]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [dbo].[SHC to SHO Hierarchy Map]
GO
/****** Object:  Table [dbo].[SHC to SHO Hierarchy Map]    Script Date: 9/11/2018 9:34:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHC to SHO Hierarchy Map](
	[Category] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[Division] [int] NOT NULL,
	[DivisionName] [nvarchar](50) NOT NULL,
	[Line] [int] NOT NULL,
	[LineName] [nvarchar](50) NOT NULL,
	[SubLine] [int] NOT NULL,
	[SublineName] [nvarchar](50) NOT NULL,
	[Class] [int] NOT NULL,
	[ClassName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO

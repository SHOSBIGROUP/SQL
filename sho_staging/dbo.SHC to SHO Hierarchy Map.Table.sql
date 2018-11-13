USE [sho_staging]
GO
/****** Object:  Table [dbo].[SHC to SHO Hierarchy Map]    Script Date: 10/26/2018 4:02:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHC to SHO Hierarchy Map](
	[Cat] [varchar](10) NULL,
	[Div] [varchar](10) NULL,
	[Ln] [varchar](10) NULL,
	[Subln] [varchar](10) NULL,
	[Class] [varchar](10) NULL,
	[Desc1] [varchar](50) NULL,
	[Desc2] [varchar](50) NULL,
	[Desc3] [varchar](50) NULL,
	[Desc4] [varchar](50) NULL
) ON [PRIMARY]
GO

USE [sho_staging]
GO
/****** Object:  Table [netsuite].[district_raw]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [netsuite].[district_raw]
GO
/****** Object:  Table [netsuite].[district_raw]    Script Date: 10/4/2018 3:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[district_raw](
	[InternalID] [varchar](10) NULL,
	[district_mgr] [varchar](75) NULL,
	[district_format_cd] [varchar](25) NULL,
	[district_nbr] [varchar](15) NULL,
	[district_name] [varchar](50) NULL,
	[inactive] [varchar](10) NULL
) ON [PRIMARY]
GO

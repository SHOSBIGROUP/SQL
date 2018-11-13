USE [sho_staging]
GO
/****** Object:  Table [netsuite].[region_raw]    Script Date: 10/26/2018 4:02:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[region_raw](
	[InternalID] [varchar](10) NULL,
	[region_mgr] [varchar](50) NULL,
	[region_format_cd] [varchar](25) NULL,
	[region_nbr] [varchar](15) NULL,
	[region_name] [varchar](50) NULL,
	[inactive] [varchar](10) NULL
) ON [PRIMARY]
GO

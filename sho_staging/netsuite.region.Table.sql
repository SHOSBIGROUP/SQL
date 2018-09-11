USE [sho_staging]
GO
/****** Object:  Table [dim].[region]    Script Date: 9/7/2018 1:56:16 PM ******/
DROP TABLE [netsuite].[region]
GO
/****** Object:  Table [dim].[region]    Script Date: 9/7/2018 1:56:20 PM ******/
/*** MEP 09/10/18 - Added Columns [close_dt] [datetime] NULL, [inactive] [bit] NULL Columns ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[region](
	[format] [varchar](15) NULL,
	[region_nbr] [varchar](10) NULL,
	[region_name] [varchar](25) NULL,
	[close_dt] [varchar](10) NULL,
	[inactive] [varchar](10) NULL
) ON [PRIMARY]


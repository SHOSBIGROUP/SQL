USE [sho_staging]
GO
/****** Object:  Table [dim].[region]    Script Date: 9/7/2018 1:56:16 PM ******/
DROP TABLE [netsuite].[district]
GO
/****** Object:  Table [dim].[district]    Script Date: 9/7/2018 1:56:20 PM ******/
/*** MEP 09/10/18 - Added Columns [close_dt] [datetime] NULL, [inactive] [bit] NULL Columns ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[district](
	[format] [varchar](15) NULL,
	[district_nbr] [varchar](10) NULL,
	[district_name] [varchar](50) NULL,
	[district_manager] [varchar](50) NULL,
	[close_dt] [varchar](10) NULL,
	[inactive] [varchar](10) NULL
) ON [PRIMARY]
GO

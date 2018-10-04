USE [sho_staging]
GO
ALTER TABLE [netsuite].[region] DROP CONSTRAINT [DF__region__rec_load__1975C517]
GO
/****** Object:  Table [netsuite].[region]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [netsuite].[region]
GO
/****** Object:  Table [netsuite].[region]    Script Date: 10/4/2018 3:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[region](
	[format_cd] [varchar](10) NULL,
	[region_nbr] [varchar](10) NULL,
	[region_name] [varchar](50) NULL,
	[region_manager] [varchar](100) NULL,
	[inactive] [varchar](10) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [netsuite].[region] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

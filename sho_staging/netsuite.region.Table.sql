USE [sho_staging]
GO
/****** Object:  Table [netsuite].[region]    Script Date: 10/24/2018 4:30:32 PM ******/
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

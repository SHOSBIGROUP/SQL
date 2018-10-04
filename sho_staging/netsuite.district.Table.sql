USE [sho_staging]
GO
ALTER TABLE [netsuite].[district] DROP CONSTRAINT [DF__district__rec_lo__2022C2A6]
GO
/****** Object:  Table [netsuite].[district]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [netsuite].[district]
GO
/****** Object:  Table [netsuite].[district]    Script Date: 10/4/2018 3:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[district](
	[district_nbr] [varchar](10) NULL,
	[district_name] [varchar](50) NULL,
	[district_manager] [varchar](50) NULL,
	[inactive] [varchar](10) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [netsuite].[district] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

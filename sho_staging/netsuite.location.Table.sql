USE [sho_staging]
GO
ALTER TABLE [netsuite].[location] DROP CONSTRAINT [DF__location__rec_lo__220B0B18]
GO
/****** Object:  Table [netsuite].[location]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [netsuite].[location]
GO
/****** Object:  Table [netsuite].[location]    Script Date: 10/4/2018 3:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[location](
	[pos_nbr] [varchar](10) NULL,
	[eis_nbr] [varchar](10) NULL,
	[location_name] [varchar](100) NULL,
	[location_format] [varchar](50) NULL,
	[location_type] [varchar](50) NULL,
	[operator_type] [varchar](50) NULL,
	[operator_name] [varchar](50) NULL,
	[district] [varchar](10) NULL,
	[region] [varchar](10) NULL,
	[city] [varchar](100) NULL,
	[state] [varchar](10) NULL,
	[zipcode] [varchar](10) NULL,
	[address1] [varchar](100) NULL,
	[address2] [varchar](100) NULL,
	[open_dt] [varchar](25) NULL,
	[close_dt] [varchar](25) NULL,
	[inactive] [varchar](10) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [netsuite].[location] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

USE [sho_staging]
GO
/****** Object:  Table [netsuite].[location]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [netsuite].[location]
GO
/****** Object:  Table [netsuite].[location]    Script Date: 9/11/2018 9:34:07 AM ******/
/*** MEP 09/10/18 - Updated DDL to Match sho_dw.dim.location Table ***/
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
	[rec_load_dt] [datetime] NOT NULL DEFAULT CURRENT_TIMESTAMP
 ) ON [PRIMARY]

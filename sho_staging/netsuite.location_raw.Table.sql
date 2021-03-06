USE [sho_staging]
GO
/****** Object:  Table [netsuite].[location_raw]    Script Date: 10/26/2018 4:02:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[location_raw](
	[Internal ID] [varchar](50) NULL,
	[inactive] [varchar](10) NULL,
	[close_dt] [varchar](25) NULL,
	[location_name] [varchar](100) NULL,
	[location_format] [varchar](50) NULL,
	[operator_type] [varchar](50) NULL,
	[operator_name] [varchar](50) NULL,
	[pos_nbr] [varchar](10) NULL,
	[eis_nbr] [varchar](10) NULL,
	[region] [varchar](10) NULL,
	[district] [varchar](10) NULL,
	[district_mgr] [varchar](50) NULL,
	[city] [varchar](100) NULL,
	[state] [varchar](10) NULL,
	[zipcode] [varchar](10) NULL,
	[address1] [varchar](100) NULL,
	[address2] [varchar](100) NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[open_dt] [varchar](25) NULL,
	[Change of Owner   Takeover Date] [varchar](50) NULL,
	[Franchisee   Dealer] [varchar](100) NULL,
	[location_type] [varchar](50) NULL,
	[Issue Date] [varchar](50) NULL,
	[Expiration Date] [varchar](50) NULL
) ON [PRIMARY]
GO

USE [sho_dw]
GO

/****** Object:  Table [dim].[location]    Script Date: 9/7/2018 1:56:16 PM ******/
DROP TABLE [dim].[location]
GO
/****** Object:  Table [dim].[location]    Script Date: 9/7/2018 1:56:16 PM ******/
/*** MEP 09/10/18 - Added Columns [close_dt] [datetime] NULL, [inactive] [bit] NULL Columns ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[location](
	[location_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[region_sk_id] [int] NOT NULL DEFAULT -1,
	[district_sk_id] [int] NOT NULL DEFAULT -1,
	[ordc_loc_sk_id] [int] NOT NULL DEFAULT -1,
	[sho_location_format_sk_id] [int] NOT NULL DEFAULT -1,
	[pos_nbr] [int] NULL DEFAULT -1,
	[ordc_nbr] [int] NULL DEFAULT -1,
	[eis_nbr] [int] NULL DEFAULT -1,
	[location_name] [varchar](75) NULL DEFAULT 'N/A',
	[location_format] [varchar](10) NULL DEFAULT 'N/A',
	[location_type] [varchar](50) NULL DEFAULT 'N/A',
	[operator_type] [varchar](50) NULL DEFAULT 'N/A',
	[operator_name] [varchar](50) NULL DEFAULT 'N/A',
	[district] [int] NULL DEFAULT -1,
	[region] [int] NULL DEFAULT -1,
	[city] [varchar](25) NULL,
	[state] [char](2) NULL,
	[zipcode] [char](7) NULL,
	[address1] [varchar](100) NULL,
	[address2] [varchar](100) NULL,
	[open_dt] [datetime] NULL,
	[close_dt] [datetime] NULL,
	[inactive] [bit] NULL DEFAULT 0,
	[rec_load_dt] [datetime] NOT NULL DEFAULT CURRENT_TIMESTAMP,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL DEFAULT CURRENT_TIMESTAMP,
	[rec_exp_dt] [datetime] NULL
PRIMARY KEY CLUSTERED 
(
	[location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

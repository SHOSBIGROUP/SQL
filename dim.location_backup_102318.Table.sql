USE [sho_dw]
GO
/****** Object:  Table [dim].[location_backup_102318]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dim].[location_backup_102318]
GO
/****** Object:  Table [dim].[location_backup_102318]    Script Date: 10/26/2018 4:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[location_backup_102318](
	[location_sk_id] [int] NOT NULL,
	[region_sk_id] [int] NOT NULL,
	[district_sk_id] [int] NOT NULL,
	[ordc_loc_sk_id] [int] NOT NULL,
	[sho_location_format_sk_id] [int] NOT NULL,
	[pos_nbr] [int] NOT NULL,
	[ordc_nbr] [int] NULL,
	[eis_nbr] [int] NULL,
	[location_name] [varchar](75) NULL,
	[location_format] [varchar](10) NULL,
	[location_type] [varchar](50) NULL,
	[operator_type] [varchar](50) NULL,
	[operator_name] [varchar](50) NULL,
	[district] [int] NULL,
	[region] [int] NULL,
	[city] [varchar](25) NULL,
	[state] [char](2) NULL,
	[zipcode] [char](7) NULL,
	[address1] [varchar](100) NULL,
	[address2] [varchar](100) NULL,
	[open_dt] [datetime] NULL,
	[close_dt] [datetime] NULL,
	[inactive] [bit] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL
) ON [PRIMARY]
GO

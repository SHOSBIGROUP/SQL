USE [sho_dw]
GO
/****** Object:  Table [dim].[location_backup_092118]    Script Date: 10/1/2018 10:00:10 AM ******/
DROP TABLE [dim].[location_backup_092118]
GO
/****** Object:  Table [dim].[location_backup_092118]    Script Date: 10/1/2018 10:00:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[location_backup_092118](
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
	[rec_exp_dt] [datetime] NULL,
 CONSTRAINT [PK_location_backup_location_sk_id] PRIMARY KEY CLUSTERED 
(
	[location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [sho_dw]
GO
/****** Object:  Table [dim].[location]    Script Date: 9/7/2018 9:35:38 AM ******/
--*** MEP 09/07/18 - Added sho_location_format_sk_id Surrogate Key for Relationship to [dim].[sho_location_formats] ***
SET ANSI_NULLS ON
GO
DROP TABLE [dim].[location];
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[location](
	[sho_location_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[region_sk_id] [int] NOT NULL,
	[district_sk_id] [int] NOT NULL,
	[ordc_loc_sk_id] [int] NOT NULL,
	[sho_location_format_sk_id] [int] NOT NULL,
	[pos_nbr] [int] NULL,
	[eis_nbr] [int] NULL,
	[location_name] [varchar](100) NULL,
	[location_format] [varchar](50) NULL,
	[location_type] [varchar](50) NULL,
	[operator_type] [varchar](50) NULL,
	[operator_name] [varchar](50) NULL,
	[district] [int] NULL,
	[region] [int] NULL,
	[city] [varchar](100) NULL,
	[state] [char](2) NULL,
	[zipcode] [char](7) NULL,
	[address1] [varchar](100) NULL,
	[address2] [varchar](100) NULL,
	[open_dt] [date] NOT NULL,
	[close_dt] [date] NOT NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[sho_location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

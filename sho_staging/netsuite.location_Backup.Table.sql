USE [sho_staging]
GO
/****** Object:  Table [netsuite].[location_Backup]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [netsuite].[location_Backup]
GO
/****** Object:  Table [netsuite].[location_Backup]    Script Date: 9/11/2018 9:34:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[location_Backup](
	[location_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[open_date] [varchar](20) NULL,
	[inactive] [varchar](5) NULL,
	[pos_nbr] [varchar](5) NULL,
	[eis_nbr] [varchar](5) NULL,
	[loc_name] [varchar](100) NULL,
	[format] [varchar](50) NULL,
	[operator_type] [varchar](50) NULL,
	[region_nbr] [varchar](5) NULL,
	[district_nbr] [varchar](5) NULL,
	[dm_nm] [varchar](50) NULL,
	[city] [varchar](100) NULL,
	[ste] [varchar](2) NULL,
	[zip] [varchar](7) NULL,
	[address1] [varchar](100) NULL,
	[address2] [varchar](100) NULL,
	[dist_nm] [varchar](50) NULL,
	[reg_nm] [varchar](50) NULL,
	[ordc_nbr] [varchar](5) NULL,
	[operator_nm] [varchar](50) NULL,
	[loc_type] [varchar](50) NULL,
	[close_dt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

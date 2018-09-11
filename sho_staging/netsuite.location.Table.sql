USE [sho_staging]
GO
ALTER TABLE [netsuite].[location] DROP CONSTRAINT [DF_location_close_dt]
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
	[location_sk_id] [int] IDENTITY(1,1) NOT NULL,
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
	[open_dt] [date] NULL,
	[close_dt] [datetime] NULL,
	[inactive] [varchar] (3) NULL
 CONSTRAINT [PK__location__LOCATION_SK_ID] PRIMARY KEY CLUSTERED 
(
	[location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

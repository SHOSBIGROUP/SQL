USE [sho_dw]
GO
/****** Object:  Table [dbo].[legacy_sho_location_dim]    Script Date: 10/4/2018 3:39:46 PM ******/
DROP TABLE [dbo].[legacy_sho_location_dim]
GO
/****** Object:  Table [dbo].[legacy_sho_location_dim]    Script Date: 10/4/2018 3:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[legacy_sho_location_dim](
	[sho_location_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[pos] [int] NOT NULL,
	[eis] [int] NOT NULL,
	[sn] [varchar](50) NOT NULL,
	[district_number] [int] NULL,
	[region] [int] NULL,
	[store_format] [varchar](25) NULL,
	[date_opened] [date] NOT NULL,
	[is_franchise] [bit] NOT NULL,
	[franchise_name] [varchar](50) NULL,
	[store_classification] [varchar](25) NULL,
	[closed_date] [date] NULL,
	[ordc_network] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sho_location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO

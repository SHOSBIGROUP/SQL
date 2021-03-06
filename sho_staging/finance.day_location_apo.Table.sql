USE [sho_staging]
GO
/****** Object:  Table [finance].[day_location_apo]    Script Date: 10/26/2018 4:02:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finance].[day_location_apo](
	[trs_date] [varchar](10) NULL,
	[pos_nbr] [varchar](10) NULL,
	[total_applications] [varchar](10) NULL,
	[total_opportunities] [varchar](10) NULL,
	[total_declined] [varchar](10) NULL,
	[sales_less_giftcards] [varchar](25) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [finance].[day_location_apo] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

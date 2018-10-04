USE [sho_staging]
GO
ALTER TABLE [finance].[day_location_apo] DROP CONSTRAINT [DF__day_locat__rec_l__64CCF2AE]
GO
/****** Object:  Table [finance].[day_location_apo]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [finance].[day_location_apo]
GO
/****** Object:  Table [finance].[day_location_apo]    Script Date: 10/4/2018 3:53:07 PM ******/
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

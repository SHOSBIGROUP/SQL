USE [sho_staging]
GO
ALTER TABLE [finance].[week_loc_div_3h_cogs_stg] DROP CONSTRAINT [DF__week_loc___rec_l__1A34DF26]
GO
/****** Object:  Table [finance].[week_loc_div_3h_cogs_stg]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [finance].[week_loc_div_3h_cogs_stg]
GO
/****** Object:  Table [finance].[week_loc_div_3h_cogs_stg]    Script Date: 10/4/2018 3:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finance].[week_loc_div_3h_cogs_stg](
	[year_title] [varchar](12) NULL,
	[loc_title] [varchar](50) NULL,
	[week_title] [varchar](6) NULL,
	[essbase_pull_title] [varchar](50) NULL,
	[div_title] [varchar](50) NULL,
	[cogs_amt] [varchar](8) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [finance].[week_loc_div_3h_cogs_stg] ADD  CONSTRAINT [DF__week_loc___rec_l__1A34DF26]  DEFAULT (getdate()) FOR [rec_load_dt]
GO

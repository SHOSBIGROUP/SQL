USE [sho_dw]
GO
ALTER TABLE [dbo].[pss_scorecard_fact] DROP CONSTRAINT [DF__pss_score__rec_l__24285DB4]
GO
/****** Object:  Table [dbo].[pss_scorecard_fact]    Script Date: 10/1/2018 10:00:10 AM ******/
DROP TABLE [dbo].[pss_scorecard_fact]
GO
/****** Object:  Table [dbo].[pss_scorecard_fact]    Script Date: 10/1/2018 10:00:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pss_scorecard_fact](
	[Facility] [int] NULL,
	[Total_images] [int] NULL,
	[Items_with_image] [int] NULL,
	[Manager_special_1] [int] NULL,
	[Manager_special_2] [int] NULL,
	[Percent_to_TTL_1] [int] NULL,
	[Percent_to_TTL_2] [int] NULL,
	[Hours] [int] NULL,
	[PPH] [int] NULL,
	[Items_per_hour] [int] NULL,
	[Floor_model] [int] NULL,
	[Scratch_on_front] [int] NULL,
	[Scratch_on_side] [int] NULL,
	[Scratch_on_top] [int] NULL,
	[Dent_on_front] [int] NULL,
	[Dent_on_side] [int] NULL,
	[Dent_on_top] [int] NULL,
	[ecomm_load_dt] [date] NULL,
	[rec_load_dt] [date] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pss_scorecard_fact] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

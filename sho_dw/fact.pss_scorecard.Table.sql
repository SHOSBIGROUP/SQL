USE [sho_dw]
GO
ALTER TABLE [fact].[pss_scorecard] DROP CONSTRAINT [DF__pss_score__rec_l__5911273F]
GO
/****** Object:  Table [fact].[pss_scorecard]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [fact].[pss_scorecard]
GO
/****** Object:  Table [fact].[pss_scorecard]    Script Date: 11/13/2018 3:54:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[pss_scorecard](
	[inv_image_sk_id] [int] IDENTITY(1,1) NOT NULL,
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
ALTER TABLE [fact].[pss_scorecard] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

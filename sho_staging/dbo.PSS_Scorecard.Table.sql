USE [sho_staging]
GO
/****** Object:  Table [dbo].[PSS_Scorecard]    Script Date: 10/26/2018 4:02:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PSS_Scorecard](
	[load_dt] [datetime] NULL,
	[full_uid] [varchar](17) NULL,
	[ordc_no] [smallint] NULL,
	[image_load_time] [varchar](19) NULL,
	[user_id] [varchar](20) NULL,
	[image_type] [varchar](8) NULL,
	[image_name] [varchar](75) NULL,
	[image_view] [varchar](23) NULL,
	[product_conditions] [varchar](50) NULL,
	[product_status] [varchar](8) NULL,
	[item_uid] [varchar](8) NULL,
	[image_url] [varchar](150) NULL,
	[outlet_load_time] [datetime] NULL,
	[year_nbr] [smallint] NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PSS_Scorecard] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

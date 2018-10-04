USE [sho_staging]
GO
ALTER TABLE [teradata].[td_brand_description] DROP CONSTRAINT [DF__td_brand___REC_L__778AC167]
GO
/****** Object:  Table [teradata].[td_brand_description]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [teradata].[td_brand_description]
GO
/****** Object:  Table [teradata].[td_brand_description]    Script Date: 10/4/2018 3:53:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_brand_description](
	[PRD_CHR_CD] [varchar](250) NULL,
	[PRD_CHR_ATR_CD] [varchar](250) NULL,
	[PRD_CHR_ATR_DS] [varchar](250) NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [teradata].[td_brand_description] ADD  DEFAULT (getdate()) FOR [REC_LOAD_DTM]
GO

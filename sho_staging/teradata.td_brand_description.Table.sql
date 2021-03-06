USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_brand_description]    Script Date: 10/26/2018 4:02:42 PM ******/
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

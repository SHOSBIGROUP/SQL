USE [sho_dw]
GO
ALTER TABLE [dim].[competitor] DROP CONSTRAINT [DF__competito__rec_l__4277DAAA]
GO
/****** Object:  Table [dim].[competitor]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dim].[competitor]
GO
/****** Object:  Table [dim].[competitor]    Script Date: 10/26/2018 4:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[competitor](
	[competitor_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[competitor_name] [varchar](30) NULL,
	[competitor_reporting_title] [varchar](50) NULL,
	[is_active] [bit] NOT NULL,
	[rec_load_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[competitor_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dim].[competitor] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

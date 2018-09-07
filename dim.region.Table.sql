USE [sho_dw]
GO
ALTER TABLE [dim].[region] DROP CONSTRAINT [DF__location___rec_l__531856C7]
GO
/****** Object:  Table [dim].[region]    Script Date: 9/7/2018 11:37:47 AM ******/
DROP TABLE [dim].[region]
GO
/****** Object:  Table [dim].[region]    Script Date: 9/7/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[region](
	[location_region_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[format] [varchar](15) NULL,
	[region_nbr] [smallint] NULL,
	[region_name] [varchar](25) NULL,
	[rec_load_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[location_region_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dim].[region] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

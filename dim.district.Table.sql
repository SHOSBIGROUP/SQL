USE [sho_dw]
GO
ALTER TABLE [dim].[district] DROP CONSTRAINT [DF__location___rec_l__5E8A0973]
GO
/****** Object:  Table [dim].[district]    Script Date: 9/7/2018 11:37:47 AM ******/
DROP TABLE [dim].[district]
GO
/****** Object:  Table [dim].[district]    Script Date: 9/7/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[district](
	[location_district_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[format] [varchar](15) NULL,
	[district_nbr] [int] NULL,
	[district_name] [varchar](50) NULL,
	[district_manager] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[location_district_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dim].[district] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

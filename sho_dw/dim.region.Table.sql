USE [sho_dw]
GO
ALTER TABLE [dim].[region] DROP CONSTRAINT [DF__region__rec_eff___231F2AE2]
GO
ALTER TABLE [dim].[region] DROP CONSTRAINT [DF__region__rec_load__222B06A9]
GO
ALTER TABLE [dim].[region] DROP CONSTRAINT [DF__region__inactive__2136E270]
GO
ALTER TABLE [dim].[region] DROP CONSTRAINT [DF__region__region_m__2042BE37]
GO
ALTER TABLE [dim].[region] DROP CONSTRAINT [DF__region__region_n__1F4E99FE]
GO
ALTER TABLE [dim].[region] DROP CONSTRAINT [DF__region__region_n__1E5A75C5]
GO
ALTER TABLE [dim].[region] DROP CONSTRAINT [DF__region__sho_loca__1D66518C]
GO
/****** Object:  Table [dim].[region]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dim].[region]
GO
/****** Object:  Table [dim].[region]    Script Date: 11/13/2018 3:54:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[region](
	[region_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[sho_location_format_sk_id] [int] NOT NULL,
	[location_format_cd] [varchar](10) NULL,
	[region_nbr] [int] NULL,
	[region_name] [varchar](25) NULL,
	[region_mgr] [varchar](50) NULL,
	[inactive] [bit] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
 CONSTRAINT [PK__region__80739032C51E1A8F] PRIMARY KEY CLUSTERED 
(
	[region_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dim].[region] ADD  CONSTRAINT [DF__region__sho_loca__1D66518C]  DEFAULT ((-1)) FOR [sho_location_format_sk_id]
GO
ALTER TABLE [dim].[region] ADD  CONSTRAINT [DF__region__region_n__1E5A75C5]  DEFAULT ((-1)) FOR [region_nbr]
GO
ALTER TABLE [dim].[region] ADD  CONSTRAINT [DF__region__region_n__1F4E99FE]  DEFAULT ('N/A') FOR [region_name]
GO
ALTER TABLE [dim].[region] ADD  CONSTRAINT [DF__region__region_m__2042BE37]  DEFAULT ('N/A') FOR [region_mgr]
GO
ALTER TABLE [dim].[region] ADD  CONSTRAINT [DF__region__inactive__2136E270]  DEFAULT ((0)) FOR [inactive]
GO
ALTER TABLE [dim].[region] ADD  CONSTRAINT [DF__region__rec_load__222B06A9]  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[region] ADD  CONSTRAINT [DF__region__rec_eff___231F2AE2]  DEFAULT (getdate()) FOR [rec_eff_dt]
GO

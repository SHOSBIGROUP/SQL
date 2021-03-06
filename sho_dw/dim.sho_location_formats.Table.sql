USE [sho_dw]
GO
ALTER TABLE [dim].[sho_location_formats] DROP CONSTRAINT [DF__sho_locat__rec_u__38B96646]
GO
ALTER TABLE [dim].[sho_location_formats] DROP CONSTRAINT [DF__sho_locat__rec_l__37C5420D]
GO
/****** Object:  Table [dim].[sho_location_formats]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dim].[sho_location_formats]
GO
/****** Object:  Table [dim].[sho_location_formats]    Script Date: 11/13/2018 3:54:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[sho_location_formats](
	[sho_location_format_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[store_group_name] [varchar](25) NULL,
	[store_supergroup_name] [varchar](25) NULL,
	[location_format_cd] [varchar](10) NULL,
	[location_format_name] [varchar](50) NULL,
	[location_format_manager] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
 CONSTRAINT [Pk_dim.sho_location_formats_sho_location_format_sk_id] PRIMARY KEY CLUSTERED 
(
	[sho_location_format_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dim].[sho_location_formats] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[sho_location_formats] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO

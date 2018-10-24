USE [sho_dw]
GO
/****** Object:  Table [dim].[sho_location_formats_backup_092118]    Script Date: 10/24/2018 4:25:55 PM ******/
DROP TABLE [dim].[sho_location_formats_backup_092118]
GO
/****** Object:  Table [dim].[sho_location_formats_backup_092118]    Script Date: 10/24/2018 4:26:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[sho_location_formats_backup_092118](
	[sho_location_format_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[store_group_name] [varchar](25) NULL,
	[store_supergroup_name] [varchar](25) NULL,
	[location_format_cd] [varchar](10) NULL,
	[location_format_name] [varchar](50) NULL,
	[location_format_manager] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO

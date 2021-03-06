USE [sho_staging]
GO
/****** Object:  Table [teradata].[sho_mstr_locn_backup_092118]    Script Date: 10/26/2018 4:02:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[sho_mstr_locn_backup_092118](
	[pos_nbr] [int] NULL,
	[eis_nbr] [int] NULL,
	[locn_city] [varchar](20) NULL,
	[locn_state] [varchar](2) NULL,
	[locn_zip] [varchar](7) NULL,
	[open_dt] [datetime] NULL,
	[close_dt] [datetime] NULL,
	[rgn_ovrhd_nbr] [int] NOT NULL,
	[dm_ovrhd_nbr] [int] NOT NULL,
	[fmt_type] [varchar](10) NULL,
	[fmt_sub_type] [varchar](2) NULL,
	[fmt_desc] [varchar](21) NULL,
	[rec_load_dtm] [datetime] NOT NULL
) ON [PRIMARY]
GO

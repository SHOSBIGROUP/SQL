USE sho_dw
GO
/****** Object:  Table [dim].[district]    Script Date: 9/7/2018 1:56:16 PM ******/
DROP TABLE [dim].[district]
GO
/****** Object:  Table [dim].[district]    Script Date: 9/7/2018 1:56:20 PM ******/
/*** MEP 09/10/18 - Added Columns [close_dt] [datetime] NULL, [inactive] [bit] NULL Columns ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[district](
	[district_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[district_nbr] [int] NULL DEFAULT -1,
	[district_name] [varchar](50) NULL DEFAULT '',
	[district_manager] [varchar](50) NULL DEFAULT 'N/A',
	[inactive] [bit] NULL DEFAULT 0,
	[rec_load_dt] [datetime] NOT NULL DEFAULT CURRENT_TIMESTAMP,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL DEFAULT CURRENT_TIMESTAMP,
	[rec_exp_dt] [datetime] NULL
PRIMARY KEY CLUSTERED 
(
	[district_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

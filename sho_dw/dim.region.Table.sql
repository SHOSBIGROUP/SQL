USE sho_dw
GO
/****** Object:  Table [dim].[region]    Script Date: 9/7/2018 1:56:16 PM ******/
DROP TABLE [dim].[region]
GO
/****** Object:  Table [dim].[region]    Script Date: 9/7/2018 1:56:20 PM ******/
/*** MEP 09/10/18 - Added Columns [region_mgr], [inactive] [bit] NULL Columns ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[region](
	[region_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[sho_location_format_sk_id] [int] NOT NULL DEFAULT -1,
	[region_nbr] [int] NULL DEFAULT -1,
	[region_name] [varchar](25) NULL DEFAULT 'Unknown',
	[region_mgr] [varchar] (50) NULL DEFAULT 'Unknown',
	[inactive] [bit] NULL DEFAULT 0,
	[rec_load_dt] [datetime] NOT NULL DEFAULT CURRENT_TIMESTAMP
PRIMARY KEY CLUSTERED 
(
	[region_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


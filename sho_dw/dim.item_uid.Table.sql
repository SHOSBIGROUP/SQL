USE [sho_dw]
GO
ALTER TABLE [dim].[item_uid] DROP CONSTRAINT [DF__item_uid__rec_lo__740F363E]
GO
ALTER TABLE [dim].[item_uid] DROP CONSTRAINT [DF__item_uid__rec_up__731B1205]
GO
/****** Object:  Table [dim].[item_uid]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dim].[item_uid]
GO
/****** Object:  Table [dim].[item_uid]    Script Date: 11/13/2018 3:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[item_uid](
	[item_uid_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[uid_cd] [varchar](19) NOT NULL,
	[uid_item_desc] [varchar](25) NOT NULL,
	[model_nbr] [varchar](25) NOT NULL,
	[brand_name] [varchar](50) NOT NULL,
	[regular_price] [decimal](11, 2) NOT NULL,
	[sell_price] [decimal](11, 2) NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[is_uid_active] [bit] NOT NULL,
	[is_mgr_special] [bit] NOT NULL,
	[rec_eff_dt] [date] NOT NULL,
	[rec_exp_dt] [date] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
	[rec_load_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[item_uid_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dim].[item_uid] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [dim].[item_uid] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

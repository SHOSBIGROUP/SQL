USE [sho_dw]
GO
ALTER TABLE [fact].[item_uid] DROP CONSTRAINT [DF__item_uid__rec_lo__62458BBE]
GO
ALTER TABLE [fact].[item_uid] DROP CONSTRAINT [DF__item_uid__rec_up__61516785]
GO
ALTER TABLE [fact].[item_uid] DROP CONSTRAINT [DF__item_uid__rec_ex__605D434C]
GO
ALTER TABLE [fact].[item_uid] DROP CONSTRAINT [DF__item_uid__rec_ef__5F691F13]
GO
/****** Object:  Table [fact].[item_uid]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [fact].[item_uid]
GO
/****** Object:  Table [fact].[item_uid]    Script Date: 11/13/2018 3:54:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[item_uid](
	[item_uid_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[uid_cd] [varchar](10) NOT NULL,
	[uid_item_desc] [varchar](200) NULL,
	[model_nbr] [varchar](20) NULL,
	[brand_name] [varchar](50) NULL,
	[regular_price] [varchar](50) NOT NULL,
	[sell_price] [varchar](50) NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[is_uid_active] [int] NOT NULL,
	[is_manager_special] [int] NOT NULL,
	[rec_eff_dt] [datetime] NOT NULL,
	[rec_exp_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [fact].[item_uid] ADD  DEFAULT (getdate()) FOR [rec_eff_dt]
GO
ALTER TABLE [fact].[item_uid] ADD  DEFAULT (getdate()) FOR [rec_exp_dt]
GO
ALTER TABLE [fact].[item_uid] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [fact].[item_uid] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

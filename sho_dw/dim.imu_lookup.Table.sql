USE [sho_dw]
GO
ALTER TABLE [dim].[imu_lookup] DROP CONSTRAINT [DF__imu_looku__rec_u__08162EEB]
GO
ALTER TABLE [dim].[imu_lookup] DROP CONSTRAINT [DF__imu_looku__rec_l__07220AB2]
GO
/****** Object:  Table [dim].[imu_lookup]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dim].[imu_lookup]
GO
/****** Object:  Table [dim].[imu_lookup]    Script Date: 11/13/2018 3:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[imu_lookup](
	[imu_lookup_dim_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[fiscal_year] [int] NULL,
	[fiscal_week] [int] NULL,
	[location_format] [varchar](10) NULL,
	[cat_div_sk_id] [int] NOT NULL,
	[div_nbr] [int] NULL,
	[imu_week] [float] NULL,
	[imu_mtd] [float] NULL,
	[cost_complement_week] [float] NULL,
	[cost_complement_mtd] [float] NULL,
	[customer_adj_week] [float] NULL,
	[customer_adj_mtd] [float] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[imu_lookup_dim_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dim].[imu_lookup] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[imu_lookup] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO

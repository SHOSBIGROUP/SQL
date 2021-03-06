USE [sho_dw]
GO
/****** Object:  Table [fact].[sho_sales_plan_gp_by_loc_Backup_100218]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [fact].[sho_sales_plan_gp_by_loc_Backup_100218]
GO
/****** Object:  Table [fact].[sho_sales_plan_gp_by_loc_Backup_100218]    Script Date: 10/26/2018 4:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_plan_gp_by_loc_Backup_100218](
	[plan_by_loc_fact_sk_id] [int] NOT NULL,
	[plan_dt_sk_id] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[plan_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[sales_plan_amt] [decimal](11, 2) NULL,
	[gp_plan_amt] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO

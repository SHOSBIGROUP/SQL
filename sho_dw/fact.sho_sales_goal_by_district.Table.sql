USE [sho_dw]
GO
/****** Object:  Table [fact].[sho_sales_goal_by_district]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [fact].[sho_sales_goal_by_district]
GO
/****** Object:  Table [fact].[sho_sales_goal_by_district]    Script Date: 11/13/2018 3:54:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_goal_by_district](
	[goal_by_district_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[district_sk_id] [int] NOT NULL,
	[district_nbr] [int] NULL,
	[goal_pa_unit_penetration] [decimal](11, 2) NULL,
	[goal_leasing] [decimal](11, 2) NULL,
	[goal_online_sales] [decimal](11, 2) NULL,
	[goal_commercial_sales] [decimal](11, 2) NULL,
	[goal_sears_credit_share] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_sho_sales_goal_by_district] PRIMARY KEY CLUSTERED 
(
	[goal_by_district_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

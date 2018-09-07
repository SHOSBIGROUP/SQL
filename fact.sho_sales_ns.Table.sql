USE [sho_dw]
GO
ALTER TABLE [fact].[sho_sales_ns] DROP CONSTRAINT [DF__sho_sales__rec_l__3D7E1B63]
GO
ALTER TABLE [fact].[sho_sales_ns] DROP CONSTRAINT [DF__sho_sales__pos_s__3C89F72A]
GO
/****** Object:  Table [fact].[sho_sales_ns]    Script Date: 9/7/2018 11:37:47 AM ******/
DROP TABLE [fact].[sho_sales_ns]
GO
/****** Object:  Table [fact].[sho_sales_ns]    Script Date: 9/7/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_ns](
	[daily_loc_div_sales_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NOT NULL,
	[prod_cat_div_sk_id] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[div_nbr] [int] NULL,
	[cat_nbr] [int] NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[carftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[avg_ticket_amt] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [decimal](11, 2) NULL,
	[spp_merch_sales] [decimal](11, 2) NULL,
	[spp_merch_units] [int] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[sears_credit_sales] [decimal](11, 2) NULL,
	[other_credit_sales] [decimal](11, 2) NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_loc_div_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [fact].[sho_sales_ns] ADD  DEFAULT ('N') FOR [pos_source_system]
GO
ALTER TABLE [fact].[sho_sales_ns] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

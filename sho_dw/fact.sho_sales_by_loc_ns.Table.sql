USE [sho_dw]
GO
ALTER TABLE [fact].[sho_sales_by_loc_ns] DROP CONSTRAINT [DF__sho_sales__rec_l__3F6663D5]
GO
ALTER TABLE [fact].[sho_sales_by_loc_ns] DROP CONSTRAINT [DF__sho_sales__pos_s__3E723F9C]
GO
/****** Object:  Table [fact].[sho_sales_by_loc_ns]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [fact].[sho_sales_by_loc_ns]
GO
/****** Object:  Table [fact].[sho_sales_by_loc_ns]    Script Date: 11/13/2018 3:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_by_loc_ns](
	[daily_loc_sales_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NULL,
	[location_sk_id] [int] NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[craftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[guardsman_sales] [decimal](11, 2) NULL,
	[guardsman_units] [int] NULL,
	[avg_ticket_sales] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [bigint] NULL,
	[spp_sales] [decimal](11, 2) NULL,
	[spp_units] [int] NULL,
	[spp_merch_sales] [decimal](11, 2) NULL,
	[spp_merch_units] [int] NULL,
	[bulk_sales] [decimal](11, 2) NULL,
	[bulk_units] [int] NULL,
	[sears_credit_sales] [decimal](11, 2) NULL,
	[other_credit_sales] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
 CONSTRAINT [PK__sho_sale__AF99227459977C81] PRIMARY KEY CLUSTERED 
(
	[daily_loc_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [fact].[sho_sales_by_loc_ns] ADD  CONSTRAINT [DF__sho_sales__pos_s__3E723F9C]  DEFAULT ('N') FOR [pos_source_system]
GO
ALTER TABLE [fact].[sho_sales_by_loc_ns] ADD  CONSTRAINT [DF__sho_sales__rec_l__3F6663D5]  DEFAULT (getdate()) FOR [rec_load_dt]
GO

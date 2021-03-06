USE [sho_dw]
GO
/****** Object:  Table [fact].[sho_sales_by_loc_backup_100818]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [fact].[sho_sales_by_loc_backup_100818]
GO
/****** Object:  Table [fact].[sho_sales_by_loc_backup_100818]    Script Date: 11/13/2018 3:54:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_by_loc_backup_100818](
	[daily_loc_sales_fact_sk_id] [int] NULL,
	[trs_dt_sk_id] [int] NULL,
	[location_sk_id] [int] NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[gross_profit] [decimal](11, 2) NULL,
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
	[spp_merch_sales] [decimal](11, 2) NULL,
	[bulk_sales] [decimal](11, 2) NULL,
	[bulk_units] [int] NULL,
	[sears_credit_sales] [decimal](11, 2) NULL,
	[other_credit_sales] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [fact].[sho_sales_by_loc]    Script Date: 9/26/2018 4:33:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [fact].[sho_sales_by_loc](
	[daily_loc_sales_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
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
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_loc_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
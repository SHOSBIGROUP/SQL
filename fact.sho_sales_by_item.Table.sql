USE [sho_dw]
GO
/****** Object:  Table [fact].[sho_sales_by_item]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [fact].[sho_sales_by_item]
GO
/****** Object:  Table [fact].[sho_sales_by_item]    Script Date: 10/26/2018 4:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_by_item](
	[sales_fact_by_item_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NOT NULL,
	[prod_sku_sk_id] [int] NOT NULL,
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
	[rec_upd_dt] [datetime] NOT NULL,
	[imu_lookup_dim_sk_id] [int] NOT NULL,
	[itm_no] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[sales_fact_by_item_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [fact].[sho_sales_dev] DROP CONSTRAINT [DF__sho_sales__rec_u__147C05D0]
GO
ALTER TABLE [fact].[sho_sales_dev] DROP CONSTRAINT [DF__sho_sales__rec_l__1387E197]
GO
/****** Object:  Table [fact].[sho_sales_dev]    Script Date: 9/7/2018 1:56:16 PM ******/
DROP TABLE [fact].[sho_sales_dev]
GO
/****** Object:  Table [fact].[sho_sales_dev]    Script Date: 9/7/2018 1:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_dev](
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
	[gross_profit] [decimal](11, 2) NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[craftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[avg_ticket_sales] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_loc_div_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [fact].[sho_sales_dev] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[sho_sales_dev] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO

USE [sho_dw]
GO
/****** Object:  Table [dbo].[sls_dly_trs_div_tyly_agg]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dbo].[sls_dly_trs_div_tyly_agg]
GO
/****** Object:  Table [dbo].[sls_dly_trs_div_tyly_agg]    Script Date: 10/26/2018 4:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sls_dly_trs_div_tyly_agg](
	[trs_dt_sk_id] [int] NOT NULL,
	[prod_cat_div_sk_id] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[div_no] [int] NULL,
	[cat_no] [int] NULL,
	[trs_dt] [date] NULL,
	[fiscal_month_nbr] [int] NOT NULL,
	[pos] [int] NOT NULL,
	[comp_sales_ty] [decimal](11, 2) NULL,
	[comp_sales_ly] [decimal](11, 2) NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[net_sales_ly] [decimal](11, 2) NULL,
	[net_units_ly] [int] NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[kenmore_sales_ly] [decimal](11, 2) NULL,
	[total_md_amt_ly] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[craftsman_sales_ly] [decimal](11, 2) NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[pa_sales_ly] [decimal](11, 2) NULL,
	[pa_units_ly] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [decimal](11, 2) NULL,
	[pam_sales_ly] [decimal](11, 2) NULL,
	[pam_units_ly] [decimal](11, 2) NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_sales_ly] [decimal](11, 2) NULL,
	[avg_ticket_sales] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[avg_ticket_sales_ly] [decimal](11, 2) NULL,
	[avg_ticket_units_ly] [int] NULL,
	[plan_amt] [decimal](11, 2) NULL,
	[forecast_amt] [decimal](11, 2) NULL,
	[plan_amt_ly] [decimal](11, 2) NULL,
	[forecast_amt_ly] [decimal](11, 2) NULL,
	[gp_sales] [decimal](11, 2) NULL,
	[gp_sales_ly] [decimal](11, 2) NULL,
 CONSTRAINT [PK_sls_dly_trs_div_tyly_agg] PRIMARY KEY CLUSTERED 
(
	[trs_dt_sk_id] ASC,
	[prod_cat_div_sk_id] ASC,
	[sho_location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO

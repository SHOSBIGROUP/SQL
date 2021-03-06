USE [sho_dw]
GO
/****** Object:  Table [fact].[ordc_scorecard]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [fact].[ordc_scorecard]
GO
/****** Object:  Table [fact].[ordc_scorecard]    Script Date: 11/13/2018 3:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[ordc_scorecard](
	[fiscal_year_nbr] [int] NULL,
	[fiscal_month_desc] [varchar](20) NULL,
	[fiscal_week_nbr] [int] NULL,
	[region] [varchar](6) NULL,
	[district] [varchar](3) NULL,
	[pos] [varchar](6) NULL,
	[eis] [varchar](6) NULL,
	[description] [varchar](50) NULL,
	[manager] [varchar](50) NULL,
	[net_sales] [decimal](11, 2) NULL,
	[sales_vs_plan] [decimal](11, 2) NULL,
	[sales_rating] [int] NULL,
	[sales_rank] [int] NULL,
	[operating_expenses] [decimal](11, 2) NULL,
	[opexp_vs_plan] [decimal](11, 2) NULL,
	[opexp_rating] [int] NULL,
	[opexp_rank] [int] NULL,
	[returns] [decimal](11, 2) NULL,
	[returns_vs_sales] [decimal](11, 2) NULL,
	[returns_ly] [decimal](11, 2) NULL,
	[returns_vs_sales_ly] [decimal](11, 2) NULL,
	[returns_bps_bw_vs_ly] [decimal](11, 2) NULL,
	[returns_rating] [int] NULL,
	[returns_rank] [int] NULL,
	[os_qual_surv] [decimal](11, 2) NULL,
	[os_qual_surv_compl] [int] NULL,
	[os_qual_surv_rating] [int] NULL,
	[os_qual_surv_rank] [int] NULL,
	[prod_pieces] [int] NULL,
	[prod_hours] [int] NULL,
	[prod_rate] [decimal](11, 2) NULL,
	[prod_goal] [decimal](11, 2) NULL,
	[prod_vs_goal] [decimal](11, 2) NULL,
	[prod_rating] [int] NULL,
	[prod_rank] [int] NULL,
	[cap_stg_testing] [int] NULL,
	[cap_wkly_testing] [int] NULL,
	[cap_weeks_supply] [decimal](11, 2) NULL,
	[cap_rank] [int] NULL,
	[serv_cost_unit] [decimal](11, 2) NULL,
	[serv_cost_rating] [int] NULL,
	[serv_cost_rank] [int] NULL,
	[junk_score_rank] [decimal](11, 2) NULL,
	[junk_rating] [int] NULL,
	[junk_rank] [int] NULL,
	[over_score_rtg] [decimal](11, 2) NULL,
	[over_score_rtg_rank] [int] NULL,
	[over_score_rnk] [decimal](11, 2) NULL,
	[over_score_rnk_rank] [int] NULL,
	[pr_month_ytd_rank] [int] NULL
) ON [PRIMARY]
GO

USE [sho_dw]
GO
/****** Object:  Table [fact].[sho_sales_ebidta_by_loc]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [fact].[sho_sales_ebidta_by_loc]
GO
/****** Object:  Table [fact].[sho_sales_ebidta_by_loc]    Script Date: 11/13/2018 3:54:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_ebidta_by_loc](
	[location_sk_id] [int] NOT NULL,
	[fiscal_year_nbr] [int] NOT NULL,
	[fiscal_month_nbr] [int] NOT NULL,
	[ebitda_amt] [decimal](11, 2) NULL,
	[ebitda_plan_amt] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL
) ON [PRIMARY]
GO

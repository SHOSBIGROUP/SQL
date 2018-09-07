USE [sho_dw]
GO
/****** Object:  Table [fact].[sho_sales_plan_forecast_by_div_format]    Script Date: 9/7/2018 11:37:47 AM ******/
DROP TABLE [fact].[sho_sales_plan_forecast_by_div_format]
GO
/****** Object:  Table [fact].[sho_sales_plan_forecast_by_div_format]    Script Date: 9/7/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_plan_forecast_by_div_format](
	[plan_by_div_format_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[location_format_sk_id] [int] NOT NULL,
	[cat_div_sk_id] [int] NOT NULL,
	[plan_dt_sk_id] [int] NOT NULL,
	[store_format_cd] [varchar](10) NULL,
	[div_nbr] [int] NOT NULL,
	[plan_dt] [date] NOT NULL,
	[plan_amt] [decimal](11, 2) NULL,
	[forecast_amt] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[plan_by_div_format_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

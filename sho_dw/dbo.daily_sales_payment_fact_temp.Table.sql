USE [sho_dw]
GO
/****** Object:  Table [dbo].[daily_sales_payment_fact_temp]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dbo].[daily_sales_payment_fact_temp]
GO
/****** Object:  Table [dbo].[daily_sales_payment_fact_temp]    Script Date: 11/13/2018 3:54:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[daily_sales_payment_fact_temp](
	[trs_dt] [date] NULL,
	[pos_no] [int] NULL,
	[div_no] [int] NULL,
	[item_no] [int] NULL,
	[pos_met_py_typ_ds] [varchar](250) NULL,
	[net_sales] [decimal](11, 2) NULL,
	[payment_amt] [decimal](11, 2) NULL,
	[PRD_IRL_NO] [int] NULL
) ON [PRIMARY]
GO

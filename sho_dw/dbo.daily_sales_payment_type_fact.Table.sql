USE [sho_dw]
GO
ALTER TABLE [dbo].[daily_sales_payment_type_fact] DROP CONSTRAINT [DF__daily_sal__rec_u__1F63A897]
GO
ALTER TABLE [dbo].[daily_sales_payment_type_fact] DROP CONSTRAINT [DF__daily_sal__rec_l__1E6F845E]
GO
/****** Object:  Table [dbo].[daily_sales_payment_type_fact]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dbo].[daily_sales_payment_type_fact]
GO
/****** Object:  Table [dbo].[daily_sales_payment_type_fact]    Script Date: 11/13/2018 3:54:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[daily_sales_payment_type_fact](
	[daily_sales_by_payment_type_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NOT NULL,
	[prd_irl_no] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[trs_dt] [date] NULL,
	[pos_no] [int] NULL,
	[div_no] [int] NULL,
	[item_no] [int] NULL,
	[pos_met_py_typ_ds] [varchar](250) NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[net_sales] [decimal](11, 2) NULL,
	[payment_amt] [int] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_sales_by_payment_type_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[daily_sales_payment_type_fact] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dbo].[daily_sales_payment_type_fact] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO

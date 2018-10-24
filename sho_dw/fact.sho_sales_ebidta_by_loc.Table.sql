USE [sho_dw]
GO
/****** Object:  Table [fact].[sho_sales_ebidta_by_loc]    Script Date: 10/24/2018 4:25:55 PM ******/
DROP TABLE [fact].[sho_sales_ebidta_by_loc]
GO
/****** Object:  Table [fact].[sho_sales_ebidta_by_loc]    Script Date: 10/24/2018 4:26:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_ebidta_by_loc](
	[location_sk_id] [int] NOT NULL,
	[pos_nbr] [int] NOT NULL,
	[calendar_mo_sk_id] [int] NOT NULL,
	[ebitda_amt] [decimal](11, 2) NULL,
	[ebitda_plan_amt] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NULL,
	[rec_upd_dt] [datetime] NULL
) ON [PRIMARY]
GO

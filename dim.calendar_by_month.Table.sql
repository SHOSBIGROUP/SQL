USE [sho_dw]
GO
/****** Object:  Table [dim].[calendar_by_month]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dim].[calendar_by_month]
GO
/****** Object:  Table [dim].[calendar_by_month]    Script Date: 10/26/2018 4:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[calendar_by_month](
	[load_dt] [date] NULL,
	[calendar_mo_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[calendar_weeks_in_month_nbr] [int] NULL,
	[calendar_month_nbr] [int] NULL,
	[calendar_month_desc] [varchar](50) NULL,
	[calendar_year_nbr] [int] NULL,
	[fiscal_month_nbr] [int] NULL,
	[fiscal_month_start_dt] [date] NULL,
	[fiscal_month_end_dt] [date] NULL,
	[fiscal_month_year_nbr] [int] NULL,
	[fiscal_quarter_nbr] [int] NULL,
	[fiscal_quarter_desc] [varchar](50) NULL,
	[fiscal_quarter_start_dt] [date] NULL,
	[fiscal_quarter_end_dt] [date] NULL,
	[fiscal_quarter_year_nbr] [int] NULL,
	[fiscal_year_nbr] [int] NULL,
	[fiscal_year_start_dt] [date] NULL,
	[fiscal_year_end_dt] [date] NULL,
	[comparable_last_year_month_nbr] [int] NULL,
	[comparable_last_year_quarter_nbr] [int] NULL,
	[comparable_last_year_nbr] [int] NULL,
	[comparable_last_year_month_start_dt] [date] NULL,
	[comparable_last_year_month_end_dt] [date] NULL,
	[fiscal_month_name] [varchar](50) NULL,
 CONSTRAINT [PK__calendar__AB676CE16378F520] PRIMARY KEY CLUSTERED 
(
	[calendar_mo_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO

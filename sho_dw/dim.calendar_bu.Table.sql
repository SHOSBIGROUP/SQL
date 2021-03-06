USE [sho_dw]
GO
/****** Object:  Table [dim].[calendar_bu]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dim].[calendar_bu]
GO
/****** Object:  Table [dim].[calendar_bu]    Script Date: 11/13/2018 3:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[calendar_bu](
	[load_dt] [date] NULL,
	[calendar_dt] [date] NOT NULL,
	[calendar_dt_sk_id] [int] NOT NULL,
	[calendar_day_of_week_desc] [varchar](50) NULL,
	[calendar_day_of_week_nbr] [int] NULL,
	[calendar_day_of_year_nbr] [int] NULL,
	[calendar_week_nbr] [int] NULL,
	[calendar_week_desc] [varchar](50) NULL,
	[calendar_week_start_dt] [date] NULL,
	[calendar_week_end_dt] [date] NULL,
	[calendar_week_of_month_nbr] [int] NULL,
	[calendar_weeks_in_month_nbr] [int] NULL,
	[calendar_week_of_quarter_nbr] [int] NULL,
	[calendar_month_nbr] [int] NULL,
	[calendar_month_desc] [varchar](50) NULL,
	[calendar_quarter_nbr] [int] NULL,
	[calendar_quarter_desc] [varchar](50) NULL,
	[calendar_year_nbr] [int] NULL,
	[fiscal_day_of_month_nbr] [int] NULL,
	[fiscal_day_of_year_nbr] [int] NULL,
	[fiscal_week_nbr] [int] NULL,
	[fiscal_week_start_dt] [date] NULL,
	[fiscal_week_end_dt] [date] NULL,
	[fiscal_week_of_month_nbr] [int] NULL,
	[fiscal_weeks_in_month_nbr] [int] NULL,
	[fiscal_week_of_quarter_nbr] [int] NULL,
	[fiscal_week_year_nbr] [int] NULL,
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
	[comparable_last_year_calendar_dt] [date] NOT NULL,
	[comparable_last_year_calendar_dt_sk_id] [int] NOT NULL,
	[comparable_last_year_week_nbr] [int] NULL,
	[comparable_l2y_year_week_nbr] [int] NULL,
	[comparable_l3y_year_week_nbr] [int] NULL,
	[comparable_last_year_month_nbr] [int] NULL,
	[comparable_last_year_quarter_nbr] [int] NULL,
	[comparable_last_year_nbr] [int] NULL,
	[comparable_last_year_week_start_dt] [date] NULL,
	[comparable_last_year_week_end_dt] [date] NULL,
	[comparable_last_year_month_start_dt] [date] NULL,
	[comparable_last_year_month_end_dt] [date] NULL,
	[holiday_nm] [varchar](50) NULL,
	[holiday_2_nm] [varchar](50) NULL,
	[holiday_3_nm] [varchar](50) NULL,
	[sprs_date_nbr] [int] NULL,
	[marketing_weekday_nbr] [int] NULL,
	[marketing_week_year_nbr] [int] NULL,
	[fiscal_month_name] [varchar](50) NULL
) ON [PRIMARY]
GO

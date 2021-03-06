USE [sho_dw]
GO
/****** Object:  Index [NonClusteredIndex-comp_ly_dt_sk_id]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [NonClusteredIndex-comp_ly_dt_sk_id] ON [dim].[calendar]
GO
/****** Object:  Index [IX_dim_calendar_fiscal_year_nbr]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [IX_dim_calendar_fiscal_year_nbr] ON [dim].[calendar]
GO
/****** Object:  Index [IX_dim_calendar_fiscal_week_nbr]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [IX_dim_calendar_fiscal_week_nbr] ON [dim].[calendar]
GO
/****** Object:  Index [IX_calendar_calendar_dt]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [IX_calendar_calendar_dt] ON [dim].[calendar]
GO
/****** Object:  Index [dim_calendar_dt_fiscal_year_week]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [dim_calendar_dt_fiscal_year_week] ON [dim].[calendar]
GO
/****** Object:  Table [dim].[calendar]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dim].[calendar]
GO
/****** Object:  Table [dim].[calendar]    Script Date: 10/26/2018 4:01:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[calendar](
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
	[fiscal_month_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[calendar_dt_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [dim_calendar_dt_fiscal_year_week]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [dim_calendar_dt_fiscal_year_week] ON [dim].[calendar]
(
	[calendar_dt_sk_id] ASC,
	[fiscal_year_nbr] ASC,
	[fiscal_week_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_calendar_calendar_dt]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_calendar_calendar_dt] ON [dim].[calendar]
(
	[calendar_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_dim_calendar_fiscal_week_nbr]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_dim_calendar_fiscal_week_nbr] ON [dim].[calendar]
(
	[fiscal_week_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_dim_calendar_fiscal_year_nbr]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_dim_calendar_fiscal_year_nbr] ON [dim].[calendar]
(
	[fiscal_year_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-comp_ly_dt_sk_id]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-comp_ly_dt_sk_id] ON [dim].[calendar]
(
	[comparable_last_year_calendar_dt_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO

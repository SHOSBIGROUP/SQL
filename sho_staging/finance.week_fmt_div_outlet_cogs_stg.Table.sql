USE [sho_staging]
GO
/****** Object:  Table [finance].[week_fmt_div_outlet_cogs_stg]    Script Date: 10/26/2018 4:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [finance].[week_fmt_div_outlet_cogs_stg](
	[year_title] [varchar](12) NULL,
	[format_title] [varchar](50) NULL,
	[week_title] [varchar](6) NULL,
	[essbase_pull_title] [varchar](50) NULL,
	[div_title] [varchar](50) NULL,
	[cogs_amt] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [finance].[week_fmt_div_outlet_cogs_stg] ADD  CONSTRAINT [DF__week_fmt___rec_l__1293BD5E]  DEFAULT (getdate()) FOR [rec_load_dt]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains year title found in row 2 ( "yyyy actuals")' , @level0type=N'SCHEMA',@level0name=N'finance', @level1type=N'TABLE',@level1name=N'week_fmt_div_outlet_cogs_stg', @level2type=N'COLUMN',@level2name=N'year_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains store format title found in row 3 of source (eg. "outlet stores")' , @level0type=N'SCHEMA',@level0name=N'finance', @level1type=N'TABLE',@level1name=N'week_fmt_div_outlet_cogs_stg', @level2type=N'COLUMN',@level2name=N'format_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains week title, found in row 4 of source file (eg. Week01)' , @level0type=N'SCHEMA',@level0name=N'finance', @level1type=N'TABLE',@level1name=N'week_fmt_div_outlet_cogs_stg', @level2type=N'COLUMN',@level2name=N'week_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is the essbase cube used and is found dows the rows in column B in source (eg. COST OF GOODS SOLD X SHRINKAGE)' , @level0type=N'SCHEMA',@level0name=N'finance', @level1type=N'TABLE',@level1name=N'week_fmt_div_outlet_cogs_stg', @level2type=N'COLUMN',@level2name=N'essbase_pull_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the div number and title, found in col C (eg. ''DIV0608 HOUSEWARES ( 008))' , @level0type=N'SCHEMA',@level0name=N'finance', @level1type=N'TABLE',@level1name=N'week_fmt_div_outlet_cogs_stg', @level2type=N'COLUMN',@level2name=N'div_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cost of Goods Sold amt. This is the intersection value in the matrics, found where desired week number along the columns and division down the rows meet.' , @level0type=N'SCHEMA',@level0name=N'finance', @level1type=N'TABLE',@level1name=N'week_fmt_div_outlet_cogs_stg', @level2type=N'COLUMN',@level2name=N'cogs_amt'
GO

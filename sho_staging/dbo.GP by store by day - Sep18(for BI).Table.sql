USE [sho_staging]
GO
/****** Object:  Table [dbo].[GP by store by day - Sep18(for BI)]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [dbo].[GP by store by day - Sep18(for BI)]
GO
/****** Object:  Table [dbo].[GP by store by day - Sep18(for BI)]    Script Date: 10/4/2018 3:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP by store by day - Sep18(for BI)](
	[pos_nbr] [varchar](50) NULL,
	[eis_nbr] [varchar](50) NULL,
	[store_name] [varchar](50) NULL,
	[district_nbr] [varchar](50) NULL,
	[region_nbr] [varchar](50) NULL,
	[store_format] [varchar](50) NULL,
	[date_opened] [varchar](50) NULL,
	[gp_plan_total_month] [varchar](50) NULL,
	[day_of_month] [varchar](50) NULL,
	[day_nbr] [varchar](50) NULL,
	[day_nbr_2] [varchar](50) NULL,
	[gp_plan] [varchar](50) NULL
) ON [PRIMARY]
GO

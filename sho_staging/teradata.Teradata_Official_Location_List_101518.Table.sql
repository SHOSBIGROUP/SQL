USE [sho_staging]
GO
/****** Object:  Table [teradata].[Teradata_Official_Location_List_101518]    Script Date: 10/26/2018 4:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[Teradata_Official_Location_List_101518](
	[row] [int] NOT NULL,
	[region_sk_id] [int] NULL,
	[district_sk_id] [int] NULL,
	[CS_STR_TYP] [nvarchar](50) NOT NULL,
	[location_format] [nvarchar](50) NOT NULL,
	[STR_TYP_DS_ABR] [nvarchar](50) NOT NULL,
	[pos_nbr] [int] NOT NULL,
	[loc_nbr] [int] NOT NULL,
	[open_dt] [datetime2](7) NOT NULL,
	[close_dt] [datetime2](7) NULL,
	[CLZ_CD] [nvarchar](50) NULL,
	[STR_TYP_CD] [nvarchar](50) NOT NULL,
	[region] [int] NOT NULL,
	[district] [int] NOT NULL,
	[FMDC_NO] [int] NOT NULL,
	[RRC_NO] [int] NOT NULL,
	[CDC_NO] [int] NOT NULL,
	[location_name] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[zipcode] [varchar](10) NOT NULL
) ON [PRIMARY]
GO

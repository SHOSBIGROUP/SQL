USE [sho_staging]
GO
/****** Object:  Table [teradata].[ts_sho_locations]    Script Date: 10/26/2018 4:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[ts_sho_locations](
	[CS_STR_TYP] [varchar](2) NULL,
	[STR_TYP_DS] [varchar](75) NULL,
	[STR_TYP_DS_ABR] [varchar](10) NULL,
	[fty_id_no] [int] NULL,
	[LOC_NO] [int] NULL,
	[LOC_OPN_DT] [date] NULL,
	[LOC_CLS_DT] [date] NULL,
	[CLZ_CD] [varchar](1) NULL,
	[STR_TYP_CD] [varchar](5) NULL,
	[RGN_NO] [int] NULL,
	[DSTR_NO] [int] NULL,
	[FMDC_NO] [smallint] NULL,
	[RRC_NO] [smallint] NULL,
	[CDC_NO] [smallint] NULL,
	[LOC_DS] [varchar](25) NULL,
	[LOC_CTY] [varchar](13) NULL,
	[LOC_STE] [varchar](2) NULL,
	[LOC_ZIP] [varchar](9) NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [teradata].[ts_sho_locations] ADD  DEFAULT (getdate()) FOR [REC_LOAD_DTM]
GO

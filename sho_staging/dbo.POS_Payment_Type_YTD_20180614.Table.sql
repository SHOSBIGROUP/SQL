USE [sho_staging]
GO
/****** Object:  Table [dbo].[POS_Payment_Type_YTD_20180614]    Script Date: 10/26/2018 4:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_Payment_Type_YTD_20180614](
	[TRS_DT] [varchar](50) NULL,
	[FTY_ID_NO] [varchar](50) NULL,
	[REG_NO] [varchar](50) NULL,
	[TRS_NO] [varchar](50) NULL,
	[TRS_LN_NO] [varchar](50) NULL,
	[DIV_OGP_NO] [varchar](50) NULL,
	[PRD_ITM_NO] [varchar](50) NULL,
	[POS_SLS_TRS_AM] [varchar](50) NULL,
	[pos_met_py_typ_ds] [varchar](50) NULL,
	[PD_AM] [varchar](50) NULL,
	[payment] [varchar](50) NULL
) ON [PRIMARY]
GO

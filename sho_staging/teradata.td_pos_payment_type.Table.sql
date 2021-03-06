USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_pos_payment_type]    Script Date: 10/26/2018 4:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_pos_payment_type](
	[TRS_DT] [date] NULL,
	[FTY_ID_NO] [varchar](50) NULL,
	[REG_NO] [varchar](50) NULL,
	[TRS_NO] [varchar](50) NULL,
	[TRS_LN_NO] [int] NULL,
	[DIV_OGP_NO] [varchar](50) NULL,
	[PRD_ITM_NO] [varchar](50) NULL,
	[POS_SLS_TRS_AM] [float] NULL,
	[pos_met_py_typ_ds] [varchar](50) NULL,
	[PD_AM] [float] NULL,
	[payment] [float] NULL
) ON [PRIMARY]
GO

USE [sho_staging]
GO
/****** Object:  Table [dbo].[POS_Payment_Type_YTD_20180621_NEW_2]    Script Date: 10/26/2018 4:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_Payment_Type_YTD_20180621_NEW_2](
	[TRS_DT] [nvarchar](50) NOT NULL,
	[FTY_ID_NO] [nvarchar](50) NOT NULL,
	[REG_NO] [nvarchar](50) NOT NULL,
	[TRS_NO] [nvarchar](50) NOT NULL,
	[TRS_LN_NO] [nvarchar](50) NOT NULL,
	[DIV_OGP_NO] [nvarchar](50) NOT NULL,
	[PRD_ITM_NO] [nvarchar](50) NOT NULL,
	[POS_SLS_TRS_AM] [nvarchar](50) NOT NULL,
	[pos_met_py_typ_ds] [nvarchar](50) NOT NULL,
	[PD_AM] [nvarchar](50) NOT NULL,
	[payment] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO

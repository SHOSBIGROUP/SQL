USE [sho_staging]
GO
/****** Object:  Table [dbo].[POS_Payment_Type_YTD_20180621_NEW]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [dbo].[POS_Payment_Type_YTD_20180621_NEW]
GO
/****** Object:  Table [dbo].[POS_Payment_Type_YTD_20180621_NEW]    Script Date: 9/11/2018 9:34:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_Payment_Type_YTD_20180621_NEW](
	[TRS_DT] [nvarchar](50) NOT NULL,
	[CUS_IAN_ID_NO] [nvarchar](50) NOT NULL,
	[IAN_TYP_CD] [nvarchar](50) NOT NULL,
	[FTY_ID_NO] [nvarchar](50) NOT NULL,
	[REG_NO] [nvarchar](50) NOT NULL,
	[TRS_NO] [nvarchar](50) NOT NULL,
	[POS_MET_PY_TYP_CD] [nvarchar](50) NOT NULL,
	[pos_met_py_typ_ds] [nvarchar](50) NOT NULL,
	[PD_AM] [nvarchar](50) NOT NULL,
	[pd_perc] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO

USE [sho_dw]
GO
/****** Object:  Table [dbo].[Field_Scorecard_HA_Extract]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dbo].[Field_Scorecard_HA_Extract]
GO
/****** Object:  Table [dbo].[Field_Scorecard_HA_Extract]    Script Date: 11/13/2018 3:54:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Field_Scorecard_HA_Extract](
	[STORE_FORMAT] [varchar](200) NULL,
	[RGN_NO] [varchar](200) NULL,
	[LOC_NO] [int] NULL,
	[LOC_DS] [varchar](200) NULL,
	[SLS_TY_DY_ACT] [float] NULL,
	[SLS_TY_WK_ACT] [float] NULL,
	[SLS_TY_MTH_ACT] [float] NULL,
	[SLS_LY_DY_ACT] [float] NULL,
	[SLS_LY_WK_ACT] [float] NULL,
	[SLS_LY_MTH_ACT] [float] NULL,
	[SLS_TY_DY_COMP] [float] NULL,
	[SLS_TY_WK_COMP] [float] NULL,
	[SLS_TY_MTH_COMP] [float] NULL,
	[SLS_LY_DY_COMP] [float] NULL,
	[SLS_LY_WK_COMP] [float] NULL,
	[SLS_LY_MTH_COMP] [float] NULL,
	[SLS_TY_DY_PA] [float] NULL,
	[SLS_TY_WK_PA] [float] NULL,
	[SLS_TY_MTH_PA] [float] NULL,
	[SLS_LY_DY_PA] [float] NULL,
	[SLS_LY_WK_PA] [float] NULL,
	[SLS_LY_MTH_PA] [float] NULL,
	[SLS_TY_DY_PA_MERCH] [float] NULL,
	[SLS_TY_WK_PA_MERCH] [float] NULL,
	[SLS_TY_MTH_PA_MERCH] [float] NULL,
	[SLS_LY_DY_PA_MERCH] [float] NULL,
	[SLS_LY_WK_PA_MERCH] [float] NULL,
	[SLS_LY_MTH_PA_MERCH] [float] NULL,
	[SLS_TY_DY_SPP] [float] NULL,
	[SLS_TY_WK_SPP] [float] NULL,
	[SLS_TY_MTH_SPP] [float] NULL,
	[SLS_LY_DY_SPP] [float] NULL,
	[SLS_LY_WK_SPP] [float] NULL,
	[SLS_LY_MTH_SPP] [float] NULL,
	[SLS_TY_DY_SPP_MERCH] [float] NULL,
	[SLS_TY_WK_SPP_MERCH] [float] NULL,
	[SLS_TY_MTH_SPP_MERCH] [float] NULL,
	[SLS_LY_DY_SPP_MERCH] [float] NULL,
	[SLS_LY_WK_SPP_MERCH] [float] NULL,
	[SLS_LY_MTH_SPP_MERCH] [float] NULL,
	[Load_Dt] [date] NULL,
	[Created_By] [varchar](200) NULL
) ON [PRIMARY]
GO

USE [sho_dw]
GO
/****** Object:  Table [dbo].[BIG_DADDY_EXTRACT]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dbo].[BIG_DADDY_EXTRACT]
GO
/****** Object:  Table [dbo].[BIG_DADDY_EXTRACT]    Script Date: 10/26/2018 4:01:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIG_DADDY_EXTRACT](
	[store_format] [varchar](200) NULL,
	[RGN_NO] [varchar](200) NULL,
	[CLASSIFY] [varchar](200) NULL,
	[DIV_NO] [int] NULL,
	[DIV_NM] [varchar](200) NULL,
	[SLS_TY_DY] [float] NULL,
	[SLS_TY_WK] [float] NULL,
	[SLS_TY_MTH] [float] NULL,
	[SLS_LY_DY] [float] NULL,
	[SLS_LY_WK] [float] NULL,
	[SLS_LY_MTH] [float] NULL,
	[R_MKDN_TY_DY] [float] NULL,
	[R_MKDN_TY_WK] [float] NULL,
	[R_MKDN_TY_MTH] [float] NULL,
	[P_MKDN_TY_DY] [float] NULL,
	[P_MKDN_TY_WK] [float] NULL,
	[P_MKDN_TY_MTH] [float] NULL,
	[R_MKDN_LY_DY] [float] NULL,
	[R_MKDN_LY_WK] [float] NULL,
	[R_MKDN_LY_MTH] [float] NULL,
	[P_MKDN_LY_DY] [float] NULL,
	[P_MKDN_LY_WK] [float] NULL,
	[P_MKDN_LY_MTH] [float] NULL,
	[UNT_TY_DY] [float] NULL,
	[UNT_TY_WK] [float] NULL,
	[UNT_TY_MTH] [float] NULL,
	[UNT_LY_DY] [float] NULL,
	[UNT_LY_WK] [float] NULL,
	[UNT_LY_MTH] [float] NULL,
	[SLS_TY_DY_KENM] [float] NULL,
	[SLS_TY_WK_KENM] [float] NULL,
	[SLS_TY_MTH_KENM] [float] NULL,
	[SLS_LY_DY_KENM] [float] NULL,
	[SLS_LY_WK_KENM] [float] NULL,
	[SLS_LY_MTH_KENM] [float] NULL,
	[SLS_TY_DY_CRAF] [float] NULL,
	[SLS_TY_WK_CRAF] [float] NULL,
	[SLS_TY_MTH_CRAF] [float] NULL,
	[SLS_LY_DY_CRAF] [float] NULL,
	[SLS_LY_WK_CRAF] [float] NULL,
	[SLS_LY_MTH_CRAF] [float] NULL,
	[Load_Dt] [date] NULL,
	[Created_By] [varchar](200) NULL
) ON [PRIMARY]
GO

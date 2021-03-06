USE [sho_staging]
GO
/****** Object:  Table [dbo].[SHO_PRODUCT]    Script Date: 10/26/2018 4:02:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHO_PRODUCT](
	[PRD_IRL_NO] [int] NULL,
	[ITM_NO] [int] NULL,
	[ITM_MFG_NO] [varchar](max) NULL,
	[ITM_STY_NO] [varchar](max) NULL,
	[ITM_PRG_DT] [datetime2](7) NULL,
	[SSN_CD] [nvarchar](50) NULL,
	[DIV_NO] [int] NULL,
	[LN_NO] [int] NULL,
	[SBL_NO] [int] NULL,
	[CLS_NO] [int] NULL,
	[VND_HFC_NO] [int] NULL,
	[PRD_DS] [varchar](max) NULL,
	[CMD_SYS_CD] [varchar](max) NULL,
	[NAT_SLL_PRC] [float] NULL,
	[DOL_FLG1] [varchar](max) NULL,
	[NAT_CST_PRC] [float] NULL,
	[DOL_FLG2] [varchar](max) NULL,
	[GRO_NO] [int] NULL,
	[CAT_NO] [int] NULL,
	[VBS_NO] [int] NULL,
	[DIV_NM] [varchar](max) NULL,
	[LN_DS] [varchar](max) NULL,
	[SBL_DS] [varchar](max) NULL,
	[CLS_DS] [varchar](max) NULL,
	[VND_HFC_NM] [varchar](max) NULL,
	[DIV_SRT_SEQ] [int] NULL,
	[MISC_INC_FL] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

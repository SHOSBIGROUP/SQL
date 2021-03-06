USE [sho_staging]
GO
/****** Object:  Table [dbo].[PRODUCT_SPRS_JOHN_SESSOMS_FILE_20180914_1]    Script Date: 10/26/2018 4:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_SPRS_JOHN_SESSOMS_FILE_20180914_1](
	[PRD_IRL_NO] [varchar](500) NOT NULL,
	[ITM_NO] [varchar](500) NOT NULL,
	[ITM_MFG_NO] [nvarchar](500) NOT NULL,
	[ITM_STY_NO] [varchar](500) NOT NULL,
	[ITM_PRG_DT] [nvarchar](50) NOT NULL,
	[SSN_CD] [nvarchar](50) NOT NULL,
	[DIV_NO] [varchar](500) NOT NULL,
	[LN_NO] [varchar](500) NOT NULL,
	[SBL_NO] [varchar](500) NOT NULL,
	[CLS_NO] [varchar](500) NOT NULL,
	[VND_HFC_NO] [varchar](500) NOT NULL,
	[PRD_DS] [nvarchar](500) NOT NULL,
	[CMD_SYS_CD] [nvarchar](500) NOT NULL,
	[NAT_SLL_PRC] [varchar](100) NOT NULL,
	[DOL_FLG1] [nvarchar](500) NOT NULL,
	[NAT_CST_PRC] [varchar](100) NOT NULL,
	[DOL_FLG2] [nvarchar](500) NOT NULL,
	[GRO_NO] [varchar](500) NOT NULL,
	[CAT_NO] [varchar](500) NOT NULL,
	[VBS_NO] [varchar](500) NOT NULL,
	[DIV_NM] [nvarchar](500) NOT NULL,
	[LN_DS] [nvarchar](500) NOT NULL,
	[SBL_DS] [nvarchar](500) NOT NULL,
	[CLS_DS] [nvarchar](500) NOT NULL,
	[VND_HFC_NM] [nvarchar](500) NOT NULL,
	[DIV_SRT_SEQ] [varchar](500) NOT NULL,
	[MISC_INC_FL] [nvarchar](500) NOT NULL,
	[PRD_CHR_CD] [varchar](500) NOT NULL,
	[PRD_CHR_ATR_CD] [varchar](500) NOT NULL,
	[PRD_CHR_ATR_ds] [varchar](500) NOT NULL
) ON [PRIMARY]
GO

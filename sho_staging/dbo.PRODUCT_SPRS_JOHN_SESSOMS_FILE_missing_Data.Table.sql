USE [sho_staging]
GO
/****** Object:  Table [dbo].[PRODUCT_SPRS_JOHN_SESSOMS_FILE_missing_Data]    Script Date: 10/26/2018 4:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_SPRS_JOHN_SESSOMS_FILE_missing_Data](
	[PRD_IRL_NO] [int] NOT NULL,
	[ITM_NO] [int] NOT NULL,
	[ITM_MFG_NO] [nvarchar](50) NOT NULL,
	[ITM_STY_NO] [int] NOT NULL,
	[ITM_PRG_DT] [nvarchar](50) NOT NULL,
	[SSN_CD] [nvarchar](50) NOT NULL,
	[DIV_NO] [int] NOT NULL,
	[LN_NO] [int] NOT NULL,
	[SBL_NO] [int] NOT NULL,
	[CLS_NO] [int] NOT NULL,
	[VND_HFC_NO] [int] NOT NULL,
	[PRD_DS] [nvarchar](50) NOT NULL,
	[CMD_SYS_CD] [nvarchar](50) NOT NULL,
	[NAT_SLL_PRC] [float] NOT NULL,
	[DOL_FLG1] [nvarchar](50) NOT NULL,
	[NAT_CST_PRC] [float] NOT NULL,
	[DOL_FLG2] [nvarchar](50) NOT NULL,
	[GRO_NO] [int] NOT NULL,
	[CAT_NO] [int] NOT NULL,
	[VBS_NO] [int] NOT NULL,
	[DIV_NM] [nvarchar](50) NOT NULL,
	[LN_DS] [nvarchar](50) NOT NULL,
	[SBL_DS] [nvarchar](50) NOT NULL,
	[CLS_DS] [nvarchar](50) NOT NULL,
	[VND_HFC_NM] [nvarchar](50) NOT NULL,
	[DIV_SRT_SEQ] [int] NOT NULL,
	[MISC_INC_FL] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO

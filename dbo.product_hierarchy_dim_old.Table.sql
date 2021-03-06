USE [sho_dw]
GO
/****** Object:  Table [dbo].[product_hierarchy_dim_old]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dbo].[product_hierarchy_dim_old]
GO
/****** Object:  Table [dbo].[product_hierarchy_dim_old]    Script Date: 10/26/2018 4:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_hierarchy_dim_old](
	[PRD_IRL_NO] [int] NULL,
	[GRO_NO] [int] NULL,
	[CAT_NO] [int] NULL,
	[VBS_NO] [int] NULL,
	[DIV_NO] [int] NULL,
	[DIV_NM] [varchar](200) NULL,
	[LN_NO] [int] NULL,
	[LN_DS] [varchar](200) NULL,
	[SBL_NO] [int] NULL,
	[SBL_DS] [varchar](200) NULL,
	[CLS_NO] [int] NULL,
	[CLS_DS] [varchar](200) NULL,
	[ITM_NO] [int] NULL,
	[PRD_DS] [varchar](200) NULL,
	[VND_HFC_NO] [int] NULL,
	[VND_HFC_NM] [varchar](200) NULL,
	[MISC_INC_FL] [varchar](200) NULL,
	[ITM_MFG_NO] [varchar](200) NULL,
	[ITM_PRG_DT] [date] NULL,
	[NAT_SLL_PRC] [float] NULL,
	[NAT_CST_PRC] [float] NULL
) ON [PRIMARY]
GO

USE [sho_dw]
GO
/****** Object:  Table [dbo].[product_hierarchy_business_dim]    Script Date: 10/4/2018 3:50:31 PM ******/
DROP TABLE [dbo].[product_hierarchy_business_dim]
GO
/****** Object:  Table [dbo].[product_hierarchy_business_dim]    Script Date: 10/4/2018 3:50:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_hierarchy_business_dim](
	[GRO_NO] [int] NULL,
	[CAT_NO] [int] NULL,
	[VBS_NO] [int] NULL,
	[VBS_NM] [varchar](200) NULL
) ON [PRIMARY]
GO

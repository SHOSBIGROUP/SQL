USE [sho_dw]
GO
/****** Object:  Table [dbo].[product_hierarchy_business_dim]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dbo].[product_hierarchy_business_dim]
GO
/****** Object:  Table [dbo].[product_hierarchy_business_dim]    Script Date: 10/26/2018 4:01:12 PM ******/
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

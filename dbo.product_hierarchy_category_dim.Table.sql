USE [sho_dw]
GO
/****** Object:  Table [dbo].[product_hierarchy_category_dim]    Script Date: 9/7/2018 11:37:47 AM ******/
DROP TABLE [dbo].[product_hierarchy_category_dim]
GO
/****** Object:  Table [dbo].[product_hierarchy_category_dim]    Script Date: 9/7/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_hierarchy_category_dim](
	[GRO_NO] [int] NULL,
	[CAT_NO] [int] NULL,
	[CAT_NM] [varchar](200) NULL
) ON [PRIMARY]
GO

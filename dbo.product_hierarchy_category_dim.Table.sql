/****** Object:  Table [dbo].[product_hierarchy_category_dim]    Script Date: 9/7/2018 1:56:16 PM ******/
DROP TABLE [dbo].[product_hierarchy_category_dim]
GO
/****** Object:  Table [dbo].[product_hierarchy_category_dim]    Script Date: 9/7/2018 1:56:17 PM ******/
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

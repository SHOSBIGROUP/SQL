USE [sho_dw]
GO
/****** Object:  Table [dbo].[product_cat_div_hierarchy_dim]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dbo].[product_cat_div_hierarchy_dim]
GO
/****** Object:  Table [dbo].[product_cat_div_hierarchy_dim]    Script Date: 10/26/2018 4:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_cat_div_hierarchy_dim](
	[cat_div_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[cat_nbr] [int] NOT NULL,
	[cat_nm] [varchar](50) NULL,
	[div_nbr] [int] NOT NULL,
	[div_nm] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_div_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO

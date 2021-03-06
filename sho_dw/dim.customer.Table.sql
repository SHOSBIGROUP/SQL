USE [sho_dw]
GO
/****** Object:  Table [dim].[customer]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dim].[customer]
GO
/****** Object:  Table [dim].[customer]    Script Date: 11/13/2018 3:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[customer](
	[cust_dim_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](100) NULL,
	[last_name] [varchar](100) NULL,
	[address] [varchar](100) NULL,
	[address2] [varchar](100) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](2) NULL,
	[zip] [varchar](12) NULL,
 CONSTRAINT [Pk_Customer] PRIMARY KEY CLUSTERED 
(
	[cust_dim_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO

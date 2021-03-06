USE [sho_dw]
GO
/****** Object:  Table [dbo].[sho_location_dim_new_old]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dbo].[sho_location_dim_new_old]
GO
/****** Object:  Table [dbo].[sho_location_dim_new_old]    Script Date: 11/13/2018 3:54:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sho_location_dim_new_old](
	[POS] [int] NOT NULL,
	[EIS] [int] NOT NULL,
	[SN] [varchar](200) NOT NULL,
	[District_Number] [int] NULL,
	[Region] [int] NULL,
	[Store_Format] [varchar](200) NULL,
	[Date_Opened] [date] NOT NULL,
	[Franchise] [bit] NOT NULL,
	[Franchise_8] [varchar](200) NULL,
	[Store_Classification] [varchar](200) NULL,
	[Closed_Date] [date] NULL,
	[ordc_network] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[POS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO

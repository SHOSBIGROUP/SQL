USE [sho_dw]
GO
/****** Object:  Table [dbo].[sho_location_dim_bu]    Script Date: 10/4/2018 3:50:31 PM ******/
DROP TABLE [dbo].[sho_location_dim_bu]
GO
/****** Object:  Table [dbo].[sho_location_dim_bu]    Script Date: 10/4/2018 3:50:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sho_location_dim_bu](
	[POS] [int] NULL,
	[EIS] [int] NULL,
	[SN] [varchar](200) NULL,
	[District_Number] [varchar](200) NULL,
	[Region] [varchar](200) NULL,
	[Store_Format] [varchar](200) NULL,
	[Date_Opened] [date] NULL,
	[Franchise] [varchar](3) NULL,
	[Franchise_8] [varchar](200) NULL,
	[Store_Classification] [varchar](200) NULL,
	[Closed_Date] [date] NULL
) ON [PRIMARY]
GO

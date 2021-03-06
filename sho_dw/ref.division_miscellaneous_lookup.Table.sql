USE [sho_dw]
GO
/****** Object:  Index [IX_division_miscellaneous_lookup_div_nbr]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP INDEX [IX_division_miscellaneous_lookup_div_nbr] ON [ref].[division_miscellaneous_lookup]
GO
/****** Object:  Table [ref].[division_miscellaneous_lookup]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [ref].[division_miscellaneous_lookup]
GO
/****** Object:  Table [ref].[division_miscellaneous_lookup]    Script Date: 11/13/2018 3:54:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[division_miscellaneous_lookup](
	[div_nbr] [varchar](3) NULL,
	[div_desc] [varchar](50) NULL,
	[div_misc] [varchar](3) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_division_miscellaneous_lookup_div_nbr]    Script Date: 11/13/2018 3:54:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_division_miscellaneous_lookup_div_nbr] ON [ref].[division_miscellaneous_lookup]
(
	[div_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO

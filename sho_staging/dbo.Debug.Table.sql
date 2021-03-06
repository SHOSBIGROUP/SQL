USE [sho_staging]
GO
/****** Object:  Table [dbo].[Debug]    Script Date: 10/26/2018 4:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Debug](
	[VariableName] [varchar](40) NULL,
	[VariableValue] [varchar](100) NULL,
	[DateTimeStamp] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Debug] ADD  CONSTRAINT [DF_Debug_DateTimeStamp]  DEFAULT (getdate()) FOR [DateTimeStamp]
GO

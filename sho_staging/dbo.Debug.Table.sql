USE [sho_staging]
GO
ALTER TABLE [dbo].[Debug] DROP CONSTRAINT [DF_Debug_DateTimeStamp]
GO
/****** Object:  Table [dbo].[Debug]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [dbo].[Debug]
GO
/****** Object:  Table [dbo].[Debug]    Script Date: 10/4/2018 3:53:00 PM ******/
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

USE [sho_dw]
GO
ALTER TABLE [dim].[district] DROP CONSTRAINT [DF__district__rec_ef__1A89E4E1]
GO
ALTER TABLE [dim].[district] DROP CONSTRAINT [DF__district__rec_lo__1995C0A8]
GO
ALTER TABLE [dim].[district] DROP CONSTRAINT [DF__district__inacti__18A19C6F]
GO
ALTER TABLE [dim].[district] DROP CONSTRAINT [DF__district__distri__17AD7836]
GO
ALTER TABLE [dim].[district] DROP CONSTRAINT [DF__district__distri__16B953FD]
GO
ALTER TABLE [dim].[district] DROP CONSTRAINT [DF__district__distri__15C52FC4]
GO
/****** Object:  Table [dim].[district]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [dim].[district]
GO
/****** Object:  Table [dim].[district]    Script Date: 11/13/2018 3:54:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[district](
	[district_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[district_nbr] [int] NULL,
	[district_name] [varchar](50) NULL,
	[district_manager] [varchar](50) NULL,
	[inactive] [bit] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[district_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dim].[district] ADD  DEFAULT ((-1)) FOR [district_nbr]
GO
ALTER TABLE [dim].[district] ADD  DEFAULT ('') FOR [district_name]
GO
ALTER TABLE [dim].[district] ADD  DEFAULT ('N/A') FOR [district_manager]
GO
ALTER TABLE [dim].[district] ADD  DEFAULT ((0)) FOR [inactive]
GO
ALTER TABLE [dim].[district] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[district] ADD  DEFAULT (getdate()) FOR [rec_eff_dt]
GO

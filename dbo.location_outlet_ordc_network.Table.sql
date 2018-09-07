USE [sho_dw]
GO
ALTER TABLE [dbo].[location_outlet_ordc_network] DROP CONSTRAINT [DF__location___rec_l__6FB49575]
GO
/****** Object:  Table [dbo].[location_outlet_ordc_network]    Script Date: 9/7/2018 11:37:47 AM ******/
DROP TABLE [dbo].[location_outlet_ordc_network]
GO
/****** Object:  Table [dbo].[location_outlet_ordc_network]    Script Date: 9/7/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location_outlet_ordc_network](
	[store_pos_nbr] [int] NOT NULL,
	[ordc_pos_nbr] [int] NOT NULL,
	[rec_load_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[store_pos_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[location_outlet_ordc_network] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO

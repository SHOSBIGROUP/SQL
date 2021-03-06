USE [sho_dw]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__rec_ef__353DDB1D]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__rec_lo__3449B6E4]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__inacti__335592AB]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__region__32616E72]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__distri__316D4A39]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__operat__30792600]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__operat__2F8501C7]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__locati__2E90DD8E]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__locati__2CA8951C]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__eis_nb__2BB470E3]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__ordc_n__2AC04CAA]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__pos_nb__29CC2871]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__ordc_l__27E3DFFF]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__distri__26EFBBC6]
GO
ALTER TABLE [dim].[location] DROP CONSTRAINT [DF__location__region__25FB978D]
GO
/****** Object:  Index [location_region_locationskid]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [location_region_locationskid] ON [dim].[location]
GO
/****** Object:  Index [location_pk]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [location_pk] ON [dim].[location]
GO
/****** Object:  Index [IX_location_region_sk_id]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [IX_location_region_sk_id] ON [dim].[location]
GO
/****** Object:  Index [IX_location_ordc_loc_sk_id]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [IX_location_ordc_loc_sk_id] ON [dim].[location]
GO
/****** Object:  Index [IX_location_eis_nbr]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [IX_location_eis_nbr] ON [dim].[location]
GO
/****** Object:  Index [IX_location_district_sk_id]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP INDEX [IX_location_district_sk_id] ON [dim].[location]
GO
/****** Object:  Table [dim].[location]    Script Date: 10/26/2018 4:01:08 PM ******/
DROP TABLE [dim].[location]
GO
/****** Object:  Table [dim].[location]    Script Date: 10/26/2018 4:01:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[location](
	[location_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[region_sk_id] [int] NOT NULL,
	[district_sk_id] [int] NOT NULL,
	[ordc_loc_sk_id] [int] NOT NULL,
	[pos_nbr] [int] NOT NULL,
	[ordc_nbr] [int] NULL,
	[eis_nbr] [int] NULL,
	[location_name] [varchar](75) NULL,
	[location_type] [varchar](50) NULL,
	[operator_type] [varchar](50) NULL,
	[operator_name] [varchar](50) NULL,
	[district] [int] NULL,
	[region] [int] NULL,
	[city] [varchar](25) NULL,
	[state] [char](2) NULL,
	[zipcode] [char](7) NULL,
	[address1] [varchar](100) NULL,
	[address2] [varchar](100) NULL,
	[open_dt] [datetime] NULL,
	[close_dt] [datetime] NULL,
	[inactive] [bit] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
 CONSTRAINT [PK_location_location_sk_id] PRIMARY KEY CLUSTERED 
(
	[location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_location_district_sk_id]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_location_district_sk_id] ON [dim].[location]
(
	[district_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_location_eis_nbr]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_location_eis_nbr] ON [dim].[location]
(
	[eis_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_location_ordc_loc_sk_id]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_location_ordc_loc_sk_id] ON [dim].[location]
(
	[ordc_loc_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [IX_location_region_sk_id]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_location_region_sk_id] ON [dim].[location]
(
	[region_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [location_pk]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [location_pk] ON [dim].[location]
(
	[location_sk_id] ASC
)
INCLUDE ( 	[region_sk_id],
	[close_dt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
/****** Object:  Index [location_region_locationskid]    Script Date: 10/26/2018 4:01:17 PM ******/
CREATE NONCLUSTERED INDEX [location_region_locationskid] ON [dim].[location]
(
	[region_sk_id] ASC,
	[location_sk_id] ASC
)
INCLUDE ( 	[open_dt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__region__25FB978D]  DEFAULT ((-1)) FOR [region_sk_id]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__distri__26EFBBC6]  DEFAULT ((-1)) FOR [district_sk_id]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__ordc_l__27E3DFFF]  DEFAULT ((-1)) FOR [ordc_loc_sk_id]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__pos_nb__29CC2871]  DEFAULT ((-1)) FOR [pos_nbr]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__ordc_n__2AC04CAA]  DEFAULT ((-1)) FOR [ordc_nbr]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__eis_nb__2BB470E3]  DEFAULT ((-1)) FOR [eis_nbr]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__locati__2CA8951C]  DEFAULT ('N/A') FOR [location_name]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__locati__2E90DD8E]  DEFAULT ('N/A') FOR [location_type]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__operat__2F8501C7]  DEFAULT ('N/A') FOR [operator_type]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__operat__30792600]  DEFAULT ('N/A') FOR [operator_name]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__distri__316D4A39]  DEFAULT ((-1)) FOR [district]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__region__32616E72]  DEFAULT ((-1)) FOR [region]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__inacti__335592AB]  DEFAULT ((0)) FOR [inactive]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__rec_lo__3449B6E4]  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[location] ADD  CONSTRAINT [DF__location__rec_ef__353DDB1D]  DEFAULT (getdate()) FOR [rec_eff_dt]
GO

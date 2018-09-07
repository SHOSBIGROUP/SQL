--*** Revised by James Marlow 2018-09-07
--*** Removed rec_eff_dt and rec_exp_dt, added default values to rec_load_dt and rec_upd_dt

USE [sho_dw]
GO

DROP TABLE [dim].[category_division]
GO

CREATE TABLE [dim].[category_division](
	[cat_div_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[vbs_nbr] [int] NOT NULL,
	[vbs_nm] [varchar](50) NULL,
	[cat_nbr] [int] NOT NULL,
	[cat_nm] [varchar](50) NULL,
	[div_nbr] [int] NOT NULL,
	[div_nm] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL default current_timestamp,
	[rec_upd_dt] [datetime] NOT NULL default current_timestamp,
PRIMARY KEY CLUSTERED 
(
	[cat_div_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
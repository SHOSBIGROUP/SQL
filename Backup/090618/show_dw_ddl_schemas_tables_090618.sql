USE [sho_dw]
GO
/****** Object:  Schema [calendar]    Script Date: 9/6/2018 1:37:46 PM ******/
CREATE SCHEMA [calendar]
GO
/****** Object:  Schema [dim]    Script Date: 9/6/2018 1:37:46 PM ******/
CREATE SCHEMA [dim]
GO
/****** Object:  Schema [fact]    Script Date: 9/6/2018 1:37:47 PM ******/
CREATE SCHEMA [fact]
GO
/****** Object:  Schema [merchandise]    Script Date: 9/6/2018 1:37:47 PM ******/
CREATE SCHEMA [merchandise]
GO
/****** Object:  Schema [ref]    Script Date: 9/6/2018 1:37:47 PM ******/
CREATE SCHEMA [ref]
GO
/****** Object:  Schema [reports]    Script Date: 9/6/2018 1:37:47 PM ******/
CREATE SCHEMA [reports]
GO
/****** Object:  Schema [sales]    Script Date: 9/6/2018 1:37:47 PM ******/
CREATE SCHEMA [sales]
GO
/****** Object:  Schema [test]    Script Date: 9/6/2018 1:37:47 PM ******/
CREATE SCHEMA [test]
GO
/****** Object:  Table [dbo].[BIG_DADDY_EXTRACT]    Script Date: 9/6/2018 1:37:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIG_DADDY_EXTRACT](
	[store_format] [varchar](200) NULL,
	[RGN_NO] [varchar](200) NULL,
	[CLASSIFY] [varchar](200) NULL,
	[DIV_NO] [int] NULL,
	[DIV_NM] [varchar](200) NULL,
	[SLS_TY_DY] [float] NULL,
	[SLS_TY_WK] [float] NULL,
	[SLS_TY_MTH] [float] NULL,
	[SLS_LY_DY] [float] NULL,
	[SLS_LY_WK] [float] NULL,
	[SLS_LY_MTH] [float] NULL,
	[R_MKDN_TY_DY] [float] NULL,
	[R_MKDN_TY_WK] [float] NULL,
	[R_MKDN_TY_MTH] [float] NULL,
	[P_MKDN_TY_DY] [float] NULL,
	[P_MKDN_TY_WK] [float] NULL,
	[P_MKDN_TY_MTH] [float] NULL,
	[R_MKDN_LY_DY] [float] NULL,
	[R_MKDN_LY_WK] [float] NULL,
	[R_MKDN_LY_MTH] [float] NULL,
	[P_MKDN_LY_DY] [float] NULL,
	[P_MKDN_LY_WK] [float] NULL,
	[P_MKDN_LY_MTH] [float] NULL,
	[UNT_TY_DY] [float] NULL,
	[UNT_TY_WK] [float] NULL,
	[UNT_TY_MTH] [float] NULL,
	[UNT_LY_DY] [float] NULL,
	[UNT_LY_WK] [float] NULL,
	[UNT_LY_MTH] [float] NULL,
	[SLS_TY_DY_KENM] [float] NULL,
	[SLS_TY_WK_KENM] [float] NULL,
	[SLS_TY_MTH_KENM] [float] NULL,
	[SLS_LY_DY_KENM] [float] NULL,
	[SLS_LY_WK_KENM] [float] NULL,
	[SLS_LY_MTH_KENM] [float] NULL,
	[SLS_TY_DY_CRAF] [float] NULL,
	[SLS_TY_WK_CRAF] [float] NULL,
	[SLS_TY_MTH_CRAF] [float] NULL,
	[SLS_LY_DY_CRAF] [float] NULL,
	[SLS_LY_WK_CRAF] [float] NULL,
	[SLS_LY_MTH_CRAF] [float] NULL,
	[Load_Dt] [date] NULL,
	[Created_By] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[daily_sales_payment_fact_temp]    Script Date: 9/6/2018 1:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[daily_sales_payment_fact_temp](
	[trs_dt] [date] NULL,
	[pos_no] [int] NULL,
	[div_no] [int] NULL,
	[item_no] [int] NULL,
	[pos_met_py_typ_ds] [varchar](250) NULL,
	[net_sales] [decimal](11, 2) NULL,
	[payment_amt] [decimal](11, 2) NULL,
	[PRD_IRL_NO] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[daily_sales_payment_type_fact]    Script Date: 9/6/2018 1:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[daily_sales_payment_type_fact](
	[daily_sales_by_payment_type_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NOT NULL,
	[prd_irl_no] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[trs_dt] [date] NULL,
	[pos_no] [int] NULL,
	[div_no] [int] NULL,
	[item_no] [int] NULL,
	[pos_met_py_typ_ds] [varchar](250) NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[net_sales] [decimal](11, 2) NULL,
	[payment_amt] [int] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_sales_by_payment_type_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Field_Scorecard_Extract]    Script Date: 9/6/2018 1:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Field_Scorecard_Extract](
	[Store_format] [varchar](200) NULL,
	[RGN_NO] [varchar](200) NULL,
	[LOC_NO] [int] NULL,
	[LOC_DS] [varchar](200) NULL,
	[SLS_TY_DY_ACT] [float] NULL,
	[SLS_TY_WK_ACT] [float] NULL,
	[SLS_TY_MTH_ACT] [float] NULL,
	[SLS_LY_DY_ACT] [float] NULL,
	[SLS_LY_WK_ACT] [float] NULL,
	[SLS_LY_MTH_ACT] [float] NULL,
	[SLS_TY_DY_COMP] [float] NULL,
	[SLS_TY_WK_COMP] [float] NULL,
	[SLS_TY_MTH_COMP] [float] NULL,
	[SLS_LY_DY_COMP] [float] NULL,
	[SLS_LY_WK_COMP] [float] NULL,
	[SLS_LY_MTH_COMP] [float] NULL,
	[SLS_TY_DY_PA] [float] NULL,
	[SLS_TY_WK_PA] [float] NULL,
	[SLS_TY_MTH_PA] [float] NULL,
	[SLS_LY_DY_PA] [float] NULL,
	[SLS_LY_WK_PA] [float] NULL,
	[SLS_LY_MTH_PA] [float] NULL,
	[SLS_TY_DY_PA_MERCH] [float] NULL,
	[SLS_TY_WK_PA_MERCH] [float] NULL,
	[SLS_TY_MTH_PA_MERCH] [float] NULL,
	[SLS_LY_DY_PA_MERCH] [float] NULL,
	[SLS_LY_WK_PA_MERCH] [float] NULL,
	[SLS_LY_MTH_PA_MERCH] [float] NULL,
	[SLS_TY_DY_SPP] [float] NULL,
	[SLS_TY_WK_SPP] [float] NULL,
	[SLS_TY_MTH_SPP] [float] NULL,
	[SLS_LY_DY_SPP] [float] NULL,
	[SLS_LY_WK_SPP] [float] NULL,
	[SLS_LY_MTH_SPP] [float] NULL,
	[SLS_TY_DY_SPP_MERCH] [float] NULL,
	[SLS_TY_WK_SPP_MERCH] [float] NULL,
	[SLS_TY_MTH_SPP_MERCH] [float] NULL,
	[SLS_LY_DY_SPP_MERCH] [float] NULL,
	[SLS_LY_WK_SPP_MERCH] [float] NULL,
	[SLS_LY_MTH_SPP_MERCH] [float] NULL,
	[Load_Dt] [date] NULL,
	[Created_By] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Field_Scorecard_HA_Extract]    Script Date: 9/6/2018 1:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Field_Scorecard_HA_Extract](
	[STORE_FORMAT] [varchar](200) NULL,
	[RGN_NO] [varchar](200) NULL,
	[LOC_NO] [int] NULL,
	[LOC_DS] [varchar](200) NULL,
	[SLS_TY_DY_ACT] [float] NULL,
	[SLS_TY_WK_ACT] [float] NULL,
	[SLS_TY_MTH_ACT] [float] NULL,
	[SLS_LY_DY_ACT] [float] NULL,
	[SLS_LY_WK_ACT] [float] NULL,
	[SLS_LY_MTH_ACT] [float] NULL,
	[SLS_TY_DY_COMP] [float] NULL,
	[SLS_TY_WK_COMP] [float] NULL,
	[SLS_TY_MTH_COMP] [float] NULL,
	[SLS_LY_DY_COMP] [float] NULL,
	[SLS_LY_WK_COMP] [float] NULL,
	[SLS_LY_MTH_COMP] [float] NULL,
	[SLS_TY_DY_PA] [float] NULL,
	[SLS_TY_WK_PA] [float] NULL,
	[SLS_TY_MTH_PA] [float] NULL,
	[SLS_LY_DY_PA] [float] NULL,
	[SLS_LY_WK_PA] [float] NULL,
	[SLS_LY_MTH_PA] [float] NULL,
	[SLS_TY_DY_PA_MERCH] [float] NULL,
	[SLS_TY_WK_PA_MERCH] [float] NULL,
	[SLS_TY_MTH_PA_MERCH] [float] NULL,
	[SLS_LY_DY_PA_MERCH] [float] NULL,
	[SLS_LY_WK_PA_MERCH] [float] NULL,
	[SLS_LY_MTH_PA_MERCH] [float] NULL,
	[SLS_TY_DY_SPP] [float] NULL,
	[SLS_TY_WK_SPP] [float] NULL,
	[SLS_TY_MTH_SPP] [float] NULL,
	[SLS_LY_DY_SPP] [float] NULL,
	[SLS_LY_WK_SPP] [float] NULL,
	[SLS_LY_MTH_SPP] [float] NULL,
	[SLS_TY_DY_SPP_MERCH] [float] NULL,
	[SLS_TY_WK_SPP_MERCH] [float] NULL,
	[SLS_TY_MTH_SPP_MERCH] [float] NULL,
	[SLS_LY_DY_SPP_MERCH] [float] NULL,
	[SLS_LY_WK_SPP_MERCH] [float] NULL,
	[SLS_LY_MTH_SPP_MERCH] [float] NULL,
	[Load_Dt] [date] NULL,
	[Created_By] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[imu_lookup_dim_bu]    Script Date: 9/6/2018 1:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imu_lookup_dim_bu](
	[imu_lookup_dim_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[Fiscal_year] [varchar](10) NULL,
	[Fiscal_month] [varchar](10) NULL,
	[Fiscal_week] [varchar](10) NULL,
	[Store_Format] [varchar](50) NULL,
	[BUnit_Div] [varchar](50) NULL,
	[BUnit_Div_Desc] [varchar](500) NULL,
	[BUnit_Div_Desc2] [varchar](500) NULL,
	[IMU_Current_Week] [varchar](50) NULL,
	[IMU_MTD] [varchar](50) NULL,
	[Cost_Complement_Current_Week] [varchar](50) NULL,
	[Cost_Complement_MTD] [varchar](50) NULL,
	[Customer_Adjustment_Current_Week] [varchar](50) NULL,
	[Customer_Adjeustment_MTD] [varchar](50) NULL,
	[rec_load_dt] [date] NULL,
	[rec_upd_dt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[imu_lookup_dim_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[legacy_sho_location_dim]    Script Date: 9/6/2018 1:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[legacy_sho_location_dim](
	[sho_location_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[pos] [int] NOT NULL,
	[eis] [int] NOT NULL,
	[sn] [varchar](50) NOT NULL,
	[district_number] [int] NULL,
	[region] [int] NULL,
	[store_format] [varchar](25) NULL,
	[date_opened] [date] NOT NULL,
	[is_franchise] [bit] NOT NULL,
	[franchise_name] [varchar](50) NULL,
	[store_classification] [varchar](25) NULL,
	[closed_date] [date] NULL,
	[ordc_network] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sho_location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[location_outlet_ordc_network]    Script Date: 9/6/2018 1:37:50 PM ******/
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
/****** Object:  Table [dbo].[product_cat_div_hierarchy_dim]    Script Date: 9/6/2018 1:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_cat_div_hierarchy_dim](
	[cat_div_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[cat_nbr] [int] NOT NULL,
	[cat_nm] [varchar](50) NULL,
	[div_nbr] [int] NOT NULL,
	[div_nm] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_div_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_hierarchy_business_dim]    Script Date: 9/6/2018 1:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_hierarchy_business_dim](
	[GRO_NO] [int] NULL,
	[CAT_NO] [int] NULL,
	[VBS_NO] [int] NULL,
	[VBS_NM] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_hierarchy_category_dim]    Script Date: 9/6/2018 1:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_hierarchy_category_dim](
	[GRO_NO] [int] NULL,
	[CAT_NO] [int] NULL,
	[CAT_NM] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_hierarchy_dim_old]    Script Date: 9/6/2018 1:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_hierarchy_dim_old](
	[PRD_IRL_NO] [int] NULL,
	[GRO_NO] [int] NULL,
	[CAT_NO] [int] NULL,
	[VBS_NO] [int] NULL,
	[DIV_NO] [int] NULL,
	[DIV_NM] [varchar](200) NULL,
	[LN_NO] [int] NULL,
	[LN_DS] [varchar](200) NULL,
	[SBL_NO] [int] NULL,
	[SBL_DS] [varchar](200) NULL,
	[CLS_NO] [int] NULL,
	[CLS_DS] [varchar](200) NULL,
	[ITM_NO] [int] NULL,
	[PRD_DS] [varchar](200) NULL,
	[VND_HFC_NO] [int] NULL,
	[VND_HFC_NM] [varchar](200) NULL,
	[MISC_INC_FL] [varchar](200) NULL,
	[ITM_MFG_NO] [varchar](200) NULL,
	[ITM_PRG_DT] [date] NULL,
	[NAT_SLL_PRC] [float] NULL,
	[NAT_CST_PRC] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pss_scorecard_fact]    Script Date: 9/6/2018 1:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pss_scorecard_fact](
	[Facility] [int] NULL,
	[Total_images] [int] NULL,
	[Items_with_image] [int] NULL,
	[Manager_special_1] [int] NULL,
	[Manager_special_2] [int] NULL,
	[Percent_to_TTL_1] [int] NULL,
	[Percent_to_TTL_2] [int] NULL,
	[Hours] [int] NULL,
	[PPH] [int] NULL,
	[Items_per_hour] [int] NULL,
	[Floor_model] [int] NULL,
	[Scratch_on_front] [int] NULL,
	[Scratch_on_side] [int] NULL,
	[Scratch_on_top] [int] NULL,
	[Dent_on_front] [int] NULL,
	[Dent_on_side] [int] NULL,
	[Dent_on_top] [int] NULL,
	[ecomm_load_dt] [date] NULL,
	[rec_load_dt] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scorecard_ratings]    Script Date: 9/6/2018 1:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scorecard_ratings](
	[location_format] [varchar](50) NOT NULL,
	[metric] [varchar](50) NOT NULL,
	[scale] [int] NOT NULL,
	[threshold] [decimal](6, 4) NOT NULL,
 CONSTRAINT [PK_scorecard_rating_table] PRIMARY KEY CLUSTERED 
(
	[location_format] ASC,
	[metric] ASC,
	[scale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sho_location_dim_bu]    Script Date: 9/6/2018 1:37:51 PM ******/
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
/****** Object:  Table [dbo].[sho_location_dim_new_old]    Script Date: 9/6/2018 1:37:51 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sls_dly_trs_div_tyly_agg]    Script Date: 9/6/2018 1:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sls_dly_trs_div_tyly_agg](
	[trs_dt_sk_id] [int] NOT NULL,
	[prod_cat_div_sk_id] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[div_no] [int] NULL,
	[cat_no] [int] NULL,
	[trs_dt] [date] NULL,
	[fiscal_month_nbr] [int] NOT NULL,
	[pos] [int] NOT NULL,
	[comp_sales_ty] [decimal](11, 2) NULL,
	[comp_sales_ly] [decimal](11, 2) NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[net_sales_ly] [decimal](11, 2) NULL,
	[net_units_ly] [int] NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[kenmore_sales_ly] [decimal](11, 2) NULL,
	[total_md_amt_ly] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[craftsman_sales_ly] [decimal](11, 2) NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[pa_sales_ly] [decimal](11, 2) NULL,
	[pa_units_ly] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [decimal](11, 2) NULL,
	[pam_sales_ly] [decimal](11, 2) NULL,
	[pam_units_ly] [decimal](11, 2) NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_sales_ly] [decimal](11, 2) NULL,
	[avg_ticket_sales] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[avg_ticket_sales_ly] [decimal](11, 2) NULL,
	[avg_ticket_units_ly] [int] NULL,
	[plan_amt] [decimal](11, 2) NULL,
	[forecast_amt] [decimal](11, 2) NULL,
	[plan_amt_ly] [decimal](11, 2) NULL,
	[forecast_amt_ly] [decimal](11, 2) NULL,
	[gp_sales] [decimal](11, 2) NULL,
	[gp_sales_ly] [decimal](11, 2) NULL,
 CONSTRAINT [PK_sls_dly_trs_div_tyly_agg] PRIMARY KEY CLUSTERED 
(
	[trs_dt_sk_id] ASC,
	[prod_cat_div_sk_id] ASC,
	[sho_location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sls_dly_trs_fact]    Script Date: 9/6/2018 1:37:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sls_dly_trs_fact](
	[Trs_Dt] [date] NULL,
	[Location] [int] NULL,
	[Net_Sales] [float] NULL,
	[Net_Units] [int] NULL,
	[PA_Sales] [float] NULL,
	[PA_Units] [int] NULL,
	[PAM_Sales] [float] NULL,
	[PAM_Units] [int] NULL,
	[SPP_Sales] [float] NULL,
	[SPP_Units] [int] NULL,
	[Lease_Sales] [float] NULL,
	[Lease_Units] [int] NULL,
	[Bulk_Sales] [float] NULL,
	[Bulk_Units] [int] NULL,
	[Sears_Credit_Sales] [float] NULL,
	[Other_Credit_Sales] [float] NULL,
	[Kenmore_Sales] [float] NULL,
	[Kenmore_Units] [int] NULL,
	[Total_Md_Amt] [float] NULL,
	[Craftsman_Sales] [float] NULL,
	[Carftsman_Units] [int] NULL,
	[Avg_Ticket_sales] [float] NULL,
	[Avg_Ticket_Units] [int] NULL,
	[Plan_Amt] [float] NULL,
	[Forecast_Amt] [float] NULL,
	[Load_Dt] [date] NULL,
	[Created_By] [varchar](200) NULL,
	[GP_Amt] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sls_dly_trs_tyly_agg]    Script Date: 9/6/2018 1:37:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sls_dly_trs_tyly_agg](
	[fiscal_year_nbr] [int] NULL,
	[fiscal_week_nbr] [int] NULL,
	[fiscal_month_nbr] [int] NULL,
	[trs_dt] [date] NULL,
	[POS] [int] NULL,
	[EIS] [int] NULL,
	[SN] [varchar](200) NULL,
	[District_Number] [int] NULL,
	[Region] [int] NULL,
	[Store_Format] [varchar](200) NULL,
	[Date_Opened] [date] NULL,
	[Franchise] [int] NULL,
	[Franchise_8] [varchar](200) NULL,
	[Store_Classification] [varchar](200) NULL,
	[Closed_Date] [date] NULL,
	[comparable_last_year_calendar_dt] [date] NULL,
	[location] [int] NULL,
	[comp_sales_ty] [float] NULL,
	[comp_sales_ly] [float] NULL,
	[Net_Sales] [float] NULL,
	[Net_Units] [int] NULL,
	[Net_Sales_LY] [float] NULL,
	[Net_Units_LY] [int] NULL,
	[Kenmore_Sales] [float] NULL,
	[Total_Md_Amt] [float] NULL,
	[Kenmore_Sales_LY] [float] NULL,
	[Total_Md_Amt_LY] [float] NULL,
	[Craftsman_Sales] [float] NULL,
	[Carftsman_Units] [int] NULL,
	[Craftsman_Sales_LY] [float] NULL,
	[Carftsman_Unit_LY] [int] NULL,
	[PA_Sales] [float] NULL,
	[PA_Units] [int] NULL,
	[PA_Sales_LY] [float] NULL,
	[PA_Units_LY] [int] NULL,
	[PAM_Sales] [float] NULL,
	[PAM_Units] [int] NULL,
	[PAM_Sales_LY] [float] NULL,
	[PAM_Units_LY] [int] NULL,
	[SPP_Sales] [float] NULL,
	[SPP_Units] [int] NULL,
	[SPP_Sales_LY] [float] NULL,
	[SPP_Units_LY] [int] NULL,
	[Lease_Sales] [float] NULL,
	[Lease_Units] [int] NULL,
	[Lease_Sales_LY] [float] NULL,
	[Lease_Units_LY] [int] NULL,
	[Bulk_Sales] [float] NULL,
	[Bulk_Units] [int] NULL,
	[Bulk_Sales_LY] [float] NULL,
	[Bulk_Units_LY] [int] NULL,
	[Sears_Credit_Sales] [float] NULL,
	[Other_Credit_Sales] [float] NULL,
	[Sears_Credit_Sales_LY] [float] NULL,
	[Other_Credit_Sales_LY] [float] NULL,
	[Avg_Ticket_sales] [float] NULL,
	[Avg_Ticket_Units] [int] NULL,
	[Avg_Ticket_sales_LY] [float] NULL,
	[Avg_Ticket_Units_LY] [int] NULL,
	[Plan_Amt] [float] NULL,
	[Forecast_Amt] [float] NULL,
	[Plan_Amt_LY] [float] NULL,
	[Forecast_Amt_LY] [float] NULL,
	[gp_sales] [float] NULL,
	[gp_sales_LY] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[calendar]    Script Date: 9/6/2018 1:37:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[calendar](
	[load_dt] [date] NULL,
	[calendar_dt] [date] NOT NULL,
	[calendar_dt_sk_id] [int] NOT NULL,
	[calendar_day_of_week_desc] [varchar](50) NULL,
	[calendar_day_of_week_nbr] [int] NULL,
	[calendar_day_of_year_nbr] [int] NULL,
	[calendar_week_nbr] [int] NULL,
	[calendar_week_desc] [varchar](50) NULL,
	[calendar_week_start_dt] [date] NULL,
	[calendar_week_end_dt] [date] NULL,
	[calendar_week_of_month_nbr] [int] NULL,
	[calendar_weeks_in_month_nbr] [int] NULL,
	[calendar_week_of_quarter_nbr] [int] NULL,
	[calendar_month_nbr] [int] NULL,
	[calendar_month_desc] [varchar](50) NULL,
	[calendar_quarter_nbr] [int] NULL,
	[calendar_quarter_desc] [varchar](50) NULL,
	[calendar_year_nbr] [int] NULL,
	[fiscal_day_of_month_nbr] [int] NULL,
	[fiscal_day_of_year_nbr] [int] NULL,
	[fiscal_week_nbr] [int] NULL,
	[fiscal_week_start_dt] [date] NULL,
	[fiscal_week_end_dt] [date] NULL,
	[fiscal_week_of_month_nbr] [int] NULL,
	[fiscal_weeks_in_month_nbr] [int] NULL,
	[fiscal_week_of_quarter_nbr] [int] NULL,
	[fiscal_week_year_nbr] [int] NULL,
	[fiscal_month_nbr] [int] NULL,
	[fiscal_month_start_dt] [date] NULL,
	[fiscal_month_end_dt] [date] NULL,
	[fiscal_month_year_nbr] [int] NULL,
	[fiscal_quarter_nbr] [int] NULL,
	[fiscal_quarter_desc] [varchar](50) NULL,
	[fiscal_quarter_start_dt] [date] NULL,
	[fiscal_quarter_end_dt] [date] NULL,
	[fiscal_quarter_year_nbr] [int] NULL,
	[fiscal_year_nbr] [int] NULL,
	[fiscal_year_start_dt] [date] NULL,
	[fiscal_year_end_dt] [date] NULL,
	[comparable_last_year_calendar_dt] [date] NOT NULL,
	[comparable_last_year_calendar_dt_sk_id] [int] NOT NULL,
	[comparable_last_year_week_nbr] [int] NULL,
	[comparable_l2y_year_week_nbr] [int] NULL,
	[comparable_l3y_year_week_nbr] [int] NULL,
	[comparable_last_year_month_nbr] [int] NULL,
	[comparable_last_year_quarter_nbr] [int] NULL,
	[comparable_last_year_nbr] [int] NULL,
	[comparable_last_year_week_start_dt] [date] NULL,
	[comparable_last_year_week_end_dt] [date] NULL,
	[comparable_last_year_month_start_dt] [date] NULL,
	[comparable_last_year_month_end_dt] [date] NULL,
	[holiday_nm] [varchar](50) NULL,
	[holiday_2_nm] [varchar](50) NULL,
	[holiday_3_nm] [varchar](50) NULL,
	[sprs_date_nbr] [int] NULL,
	[marketing_weekday_nbr] [int] NULL,
	[marketing_week_year_nbr] [int] NULL,
	[fiscal_month_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[calendar_dt_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[category_division]    Script Date: 9/6/2018 1:37:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[category_division](
	[cat_div_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[cat_nbr] [int] NOT NULL,
	[cat_nm] [varchar](50) NULL,
	[div_nbr] [int] NOT NULL,
	[div_nm] [varchar](50) NULL,
	[rec_load_dt] [datetime] NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_div_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[category_division_new]    Script Date: 9/6/2018 1:37:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[category_division_new](
	[cat_div_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[cat_nbr] [int] NOT NULL,
	[cat_nm] [varchar](50) NULL,
	[div_nbr] [int] NOT NULL,
	[div_nm] [varchar](50) NULL,
	[rec_load_dt] [datetime] NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_div_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[competitor]    Script Date: 9/6/2018 1:37:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[competitor](
	[competitor_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[competitor_name] [varchar](30) NULL,
	[competitor_reporting_title] [varchar](50) NULL,
	[is_active] [bit] NOT NULL,
	[rec_load_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[competitor_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[customer]    Script Date: 9/6/2018 1:37:53 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[district]    Script Date: 9/6/2018 1:37:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[district](
	[location_district_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[format] [varchar](15) NULL,
	[district_nbr] [int] NULL,
	[district_name] [varchar](50) NULL,
	[district_manager] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[location_district_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[imu_lookup]    Script Date: 9/6/2018 1:37:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[imu_lookup](
	[imu_lookup_dim_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[fiscal_year] [int] NULL,
	[fiscal_week] [int] NULL,
	[location_format] [varchar](10) NULL,
	[cat_div_sk_id] [int] NOT NULL,
	[div_nbr] [int] NULL,
	[imu_week] [float] NULL,
	[imu_mtd] [float] NULL,
	[cost_complement_week] [float] NULL,
	[cost_complement_mtd] [float] NULL,
	[customer_adj_week] [float] NULL,
	[customer_adj_mtd] [float] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[imu_lookup_dim_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[item_uid]    Script Date: 9/6/2018 1:37:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[item_uid](
	[item_uid_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[uid_cd] [varchar](19) NOT NULL,
	[uid_item_desc] [varchar](25) NOT NULL,
	[model_nbr] [varchar](25) NOT NULL,
	[brand_name] [varchar](50) NOT NULL,
	[regular_price] [decimal](11, 2) NOT NULL,
	[sell_price] [decimal](11, 2) NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[is_uid_active] [bit] NOT NULL,
	[is_mgr_special] [bit] NOT NULL,
	[rec_eff_dt] [date] NOT NULL,
	[rec_exp_dt] [date] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
	[rec_load_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[item_uid_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[location]    Script Date: 9/6/2018 1:37:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[location](
	[sho_location_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[region_sk_id] [int] NOT NULL,
	[district_sk_id] [int] NOT NULL,
	[ordc_loc_sk_id] [int] NOT NULL,
	[pos_nbr] [int] NULL,
	[eis_nbr] [int] NULL,
	[location_name] [varchar](100) NULL,
	[location_format] [varchar](50) NULL,
	[location_type] [varchar](50) NULL,
	[operator_type] [varchar](50) NULL,
	[operator_name] [varchar](50) NULL,
	[district] [int] NULL,
	[region] [int] NULL,
	[city] [varchar](100) NULL,
	[state] [char](2) NULL,
	[zipcode] [char](7) NULL,
	[address1] [varchar](100) NULL,
	[address2] [varchar](100) NULL,
	[open_dt] [date] NOT NULL,
	[close_dt] [date] NOT NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[sho_location_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[product]    Script Date: 9/6/2018 1:37:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[product](
	[prod_sku_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[prd_irl_no] [int] NULL,
	[gro_no] [int] NULL,
	[cat_no] [int] NULL,
	[vbs_no] [int] NULL,
	[div_no] [int] NULL,
	[div_nm] [varchar](200) NULL,
	[ln_no] [int] NULL,
	[ln_ds] [varchar](200) NULL,
	[sbl_no] [int] NULL,
	[sbl_ds] [varchar](200) NULL,
	[cls_no] [int] NULL,
	[cls_ds] [varchar](200) NULL,
	[itm_no] [bigint] NULL,
	[prd_ds] [varchar](200) NULL,
	[vnd_hfc_no] [int] NULL,
	[vnd_hfc_nm] [varchar](200) NULL,
	[misc_inc_fl] [varchar](200) NULL,
	[itm_mfg_no] [varchar](200) NULL,
	[itm_prg_dt] [date] NULL,
	[brand_id] [varchar](50) NULL,
	[brand_desc] [varchar](1000) NULL,
	[nat_sll_prc] [float] NULL,
	[nat_cst_prc] [float] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[item_active_flag] [varchar](5) NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
	[cat_div_sk_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[prod_sku_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[product_dev]    Script Date: 9/6/2018 1:37:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[product_dev](
	[prod_sku_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[prd_irl_no] [int] NULL,
	[gro_no] [int] NULL,
	[cat_no] [int] NULL,
	[vbs_no] [int] NULL,
	[div_no] [int] NULL,
	[div_nm] [varchar](200) NULL,
	[ln_no] [int] NULL,
	[ln_ds] [varchar](200) NULL,
	[sbl_no] [int] NULL,
	[sbl_ds] [varchar](200) NULL,
	[cls_no] [int] NULL,
	[cls_ds] [varchar](200) NULL,
	[itm_no] [bigint] NULL,
	[prd_ds] [varchar](200) NULL,
	[vnd_hfc_no] [int] NULL,
	[vnd_hfc_nm] [varchar](200) NULL,
	[misc_inc_fl] [varchar](200) NULL,
	[itm_mfg_no] [varchar](200) NULL,
	[itm_prg_dt] [date] NULL,
	[brand_id] [varchar](50) NULL,
	[brand_desc] [varchar](1000) NULL,
	[nat_sll_prc] [float] NULL,
	[nat_cst_prc] [float] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[item_active_flag] [varchar](5) NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
	[cat_div_sk_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[prod_sku_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[region]    Script Date: 9/6/2018 1:37:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[region](
	[location_region_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[format] [varchar](15) NULL,
	[region_nbr] [smallint] NULL,
	[region_name] [varchar](25) NULL,
	[rec_load_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[location_region_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[sho_location_formats]    Script Date: 9/6/2018 1:37:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[sho_location_formats](
	[sho_location_format_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[store_group_name] [varchar](25) NULL,
	[store_supergroup_name] [varchar](25) NULL,
	[location_format_cd] [varchar](10) NULL,
	[location_format_title] [varchar](50) NULL,
	[location_format_manager] [varchar](50) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
 CONSTRAINT [Pk_dim.sho_location_formats_sho_location_format_sk_id] PRIMARY KEY CLUSTERED 
(
	[sho_location_format_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[sho_sales]    Script Date: 9/6/2018 1:37:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales](
	[daily_loc_div_sales_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NOT NULL,
	[prod_cat_div_sk_id] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[div_nbr] [int] NULL,
	[cat_nbr] [int] NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[carftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[avg_ticket_amt] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [decimal](11, 2) NULL,
	[spp_merch_sales] [decimal](11, 2) NULL,
	[spp_merch_units] [int] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
	[imu_lookup_dim_sk_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_loc_div_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[sho_sales_by_item]    Script Date: 9/6/2018 1:37:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_by_item](
	[sales_fact_by_item_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NOT NULL,
	[prod_sku_sk_id] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[div_nbr] [int] NULL,
	[cat_nbr] [int] NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[carftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[avg_ticket_amt] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [decimal](11, 2) NULL,
	[spp_merch_sales] [decimal](11, 2) NULL,
	[spp_merch_units] [int] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
	[imu_lookup_dim_sk_id] [int] NOT NULL,
	[itm_no] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[sales_fact_by_item_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[sho_sales_by_item_ns]    Script Date: 9/6/2018 1:37:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_by_item_ns](
	[sales_fact_by_item_ns_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NOT NULL,
	[prod_sku_sk_id] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[div_nbr] [int] NULL,
	[cat_nbr] [int] NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[carftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[avg_ticket_amt] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [decimal](11, 2) NULL,
	[spp_merch_sales] [decimal](11, 2) NULL,
	[spp_merch_units] [int] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
	[itm_no] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[sales_fact_by_item_ns_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[sho_sales_by_loc]    Script Date: 9/6/2018 1:37:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_by_loc](
	[daily_loc_sales_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NULL,
	[sho_location_sk_id] [int] NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[craftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[avg_ticket_sales] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [bigint] NULL,
	[spp_sales] [decimal](11, 2) NULL,
	[spp_units] [int] NULL,
	[spp_merch_sales] [decimal](11, 2) NULL,
	[spp_merch_units] [int] NULL,
	[bulk_sales] [decimal](11, 2) NULL,
	[bulk_units] [int] NULL,
	[sears_credit_sales] [decimal](11, 2) NULL,
	[other_credit_sales] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_loc_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[sho_sales_by_loc_dev]    Script Date: 9/6/2018 1:37:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_by_loc_dev](
	[daily_loc_sales_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NULL,
	[sho_location_sk_id] [int] NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[craftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[avg_ticket_sales] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [bigint] NULL,
	[spp_sales] [decimal](11, 2) NULL,
	[spp_merch_sales] [decimal](11, 2) NULL,
	[bulk_sales] [decimal](11, 2) NULL,
	[bulk_units] [int] NULL,
	[sears_credit_sales] [decimal](11, 2) NULL,
	[other_credit_sales] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_loc_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[sho_sales_by_loc_ns]    Script Date: 9/6/2018 1:37:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_by_loc_ns](
	[daily_loc_sales_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NULL,
	[sho_location_sk_id] [int] NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[craftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[avg_ticket_sales] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [bigint] NULL,
	[spp_sales] [decimal](11, 2) NULL,
	[spp_units] [int] NULL,
	[spp_merch_sales] [decimal](11, 2) NULL,
	[spp_merch_units] [int] NULL,
	[bulk_sales] [decimal](11, 2) NULL,
	[bulk_units] [int] NULL,
	[sears_credit_sales] [decimal](11, 2) NULL,
	[other_credit_sales] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_loc_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[sho_sales_dev]    Script Date: 9/6/2018 1:37:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_dev](
	[daily_loc_div_sales_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NOT NULL,
	[prod_cat_div_sk_id] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[div_nbr] [int] NULL,
	[cat_nbr] [int] NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[gross_profit] [decimal](11, 2) NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[craftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[avg_ticket_sales] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_loc_div_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[sho_sales_ns]    Script Date: 9/6/2018 1:37:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_ns](
	[daily_loc_div_sales_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[trs_dt_sk_id] [int] NOT NULL,
	[prod_cat_div_sk_id] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[trs_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[div_nbr] [int] NULL,
	[cat_nbr] [int] NULL,
	[net_sales] [decimal](11, 2) NULL,
	[net_units] [int] NULL,
	[kenmore_sales] [decimal](11, 2) NULL,
	[kenmore_units] [int] NULL,
	[total_md_amt] [decimal](11, 2) NULL,
	[craftsman_sales] [decimal](11, 2) NULL,
	[carftsman_units] [int] NULL,
	[diehard_sales] [decimal](11, 2) NULL,
	[diehard_units] [int] NULL,
	[avg_ticket_amt] [decimal](11, 2) NULL,
	[avg_ticket_units] [int] NULL,
	[pos_source_system] [varchar](1) NULL,
	[pa_sales] [decimal](11, 2) NULL,
	[pa_units] [int] NULL,
	[lease_sales] [decimal](11, 2) NULL,
	[lease_units] [int] NULL,
	[pam_sales] [decimal](11, 2) NULL,
	[pam_units] [decimal](11, 2) NULL,
	[spp_merch_sales] [decimal](11, 2) NULL,
	[spp_merch_units] [int] NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NULL,
	[sears_credit_sales] [decimal](11, 2) NULL,
	[other_credit_sales] [decimal](11, 2) NULL,
	[rec_eff_dt] [datetime] NULL,
	[rec_exp_dt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[daily_loc_div_sales_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[sho_sales_plan_forecast_by_div_format]    Script Date: 9/6/2018 1:37:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_plan_forecast_by_div_format](
	[plan_by_div_format_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[location_format_sk_id] [int] NOT NULL,
	[cat_div_sk_id] [int] NOT NULL,
	[plan_dt_sk_id] [int] NOT NULL,
	[store_format_cd] [varchar](10) NULL,
	[div_nbr] [int] NOT NULL,
	[plan_dt] [date] NOT NULL,
	[plan_amt] [decimal](11, 2) NULL,
	[forecast_amt] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[plan_by_div_format_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[sho_sales_plan_gp_by_loc]    Script Date: 9/6/2018 1:37:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[sho_sales_plan_gp_by_loc](
	[plan_by_loc_fact_sk_id] [int] IDENTITY(1,1) NOT NULL,
	[plan_dt_sk_id] [int] NOT NULL,
	[sho_location_sk_id] [int] NOT NULL,
	[plan_dt] [date] NULL,
	[pos_nbr] [int] NULL,
	[sales_plan_amt] [decimal](11, 2) NULL,
	[gp_plan_amt] [decimal](11, 2) NULL,
	[rec_load_dt] [datetime] NOT NULL,
	[rec_upd_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[plan_by_loc_fact_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[uid_competitor_market]    Script Date: 9/6/2018 1:37:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[uid_competitor_market](
	[uid_competitor_sk_id] [int] IDENTITY(-1,1) NOT NULL,
	[item_uid_sk_id] [int] NOT NULL,
	[competitor_sk_id] [int] NOT NULL,
	[competitor_item_price] [decimal](11, 2) NULL,
	[scrape_dt] [datetime] NOT NULL,
	[scrape_dt_sk_id] [int] NOT NULL,
	[rec_load_dt] [datetime] NULL,
	[uid_location_sk_id] [int] NULL,
	[is_item_available] [bit] NULL,
	[is_price_incart] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uid_competitor_sk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[daily_sales_payment_type_fact] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dbo].[daily_sales_payment_type_fact] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [dbo].[imu_lookup_dim_bu] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dbo].[imu_lookup_dim_bu] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [dbo].[location_outlet_ordc_network] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dbo].[pss_scorecard_fact] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[category_division] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[category_division] ADD  DEFAULT (getdate()) FOR [rec_eff_dt]
GO
ALTER TABLE [dim].[category_division] ADD  DEFAULT ('9999-12-31') FOR [rec_exp_dt]
GO
ALTER TABLE [dim].[category_division_new] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[category_division_new] ADD  DEFAULT (getdate()) FOR [rec_eff_dt]
GO
ALTER TABLE [dim].[category_division_new] ADD  DEFAULT ('9999-12-31') FOR [rec_exp_dt]
GO
ALTER TABLE [dim].[competitor] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[district] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[imu_lookup] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[imu_lookup] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [dim].[item_uid] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [dim].[item_uid] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[location] ADD  DEFAULT ((-1)) FOR [ordc_loc_sk_id]
GO
ALTER TABLE [dim].[location] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[location] ADD  DEFAULT (getdate()) FOR [rec_eff_dt]
GO
ALTER TABLE [dim].[product] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[product] ADD  DEFAULT (getdate()) FOR [rec_eff_dt]
GO
ALTER TABLE [dim].[product] ADD  DEFAULT (NULL) FOR [rec_exp_dt]
GO
ALTER TABLE [dim].[product_dev] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[product_dev] ADD  DEFAULT (getdate()) FOR [rec_eff_dt]
GO
ALTER TABLE [dim].[product_dev] ADD  DEFAULT (NULL) FOR [rec_exp_dt]
GO
ALTER TABLE [dim].[region] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[sho_location_formats] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [dim].[sho_location_formats] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [fact].[sho_sales_by_item_ns] ADD  DEFAULT ('N') FOR [pos_source_system]
GO
ALTER TABLE [fact].[sho_sales_by_item_ns] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[sho_sales_by_loc_dev] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[sho_sales_by_loc_dev] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [fact].[sho_sales_by_loc_ns] ADD  DEFAULT ('N') FOR [pos_source_system]
GO
ALTER TABLE [fact].[sho_sales_by_loc_ns] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[sho_sales_dev] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[sho_sales_dev] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [fact].[sho_sales_ns] ADD  DEFAULT ('N') FOR [pos_source_system]
GO
ALTER TABLE [fact].[sho_sales_ns] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[sho_sales_plan_gp_by_loc] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[sho_sales_plan_gp_by_loc] ADD  DEFAULT (getdate()) FOR [rec_upd_dt]
GO
ALTER TABLE [fact].[uid_competitor_market] ADD  DEFAULT (getdate()) FOR [rec_load_dt]
GO
ALTER TABLE [fact].[uid_competitor_market] ADD  CONSTRAINT [defo_uid_competitor_market_uid_location_sk_id]  DEFAULT ((-1)) FOR [uid_location_sk_id]
GO
ALTER TABLE [fact].[uid_competitor_market]  WITH CHECK ADD  CONSTRAINT [Fk_uid_competitor_market_competitor] FOREIGN KEY([competitor_sk_id])
REFERENCES [dim].[competitor] ([competitor_sk_id])
GO
ALTER TABLE [fact].[uid_competitor_market] CHECK CONSTRAINT [Fk_uid_competitor_market_competitor]
GO

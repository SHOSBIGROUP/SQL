USE [sho_dw]
GO
/****** Object:  View [sales].[vw_weekly_ordc_scorecard]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP VIEW [sales].[vw_weekly_ordc_scorecard]
GO
/****** Object:  View [sales].[vw_weekly_ordc_scorecard]    Script Date: 11/13/2018 3:54:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [sales].[vw_weekly_ordc_scorecard] 
AS
SELECT 'Outlet ORDC Scorecard ' + [fiscal_month_desc] + ' Week ' + Convert(varchar(2),fiscal_week_nbr) + ', ' + Convert(varchar(4),fiscal_year_nbr) As ORDCHeader
		,[fiscal_year_nbr]
      ,[fiscal_week_nbr]
      ,[region] as Region
      ,[district] as District
      ,[pos] as POS
      ,[eis] as EIS
      ,[description] as [Description]
      ,[manager] as Manager
      ,[net_sales] as [Sales $'s]
      ,([sales_vs_plan] / 100) as [Sales vs Plan]
      ,[sales_rating] as [Sales Rating]
      ,Case When [sales_rank] = 0 then Null Else [sales_rank] End as [Sales Rank]
      ,[operating_expenses] as [Operating Expenses]
      ,([opexp_vs_plan] / 100) as [Operating Expenses vs Plan]
      ,[opexp_rating] as [Operating Expenses Rating]
      ,Case When [opexp_rank] = 0 then Null Else [opexp_rank] End as [Operating Expenses Rank]
      ,[returns] as [Returns]
      ,([returns_vs_sales] / 100) as [Returns vs Sales]
      ,[returns_ly] 
      ,([returns_vs_sales_ly] / 100) as [Returns vs Sales LY]
      ,[returns_bps_bw_vs_ly]
      ,[returns_rating] as [Returns Rating]
      ,Case When [returns_rank] = 0 then Null Else [returns_rank] End as [Returns Rank]
      ,([os_qual_surv] / 100) as [OS Quality Survey]
      ,[os_qual_surv_compl] as [OS Quality Surveys Complete]
      ,[os_qual_surv_rating] as [OS Quality Surveys Rating]
      ,Case When [os_qual_surv_rank] = 0 then Null Else [os_qual_surv_rank] End as [OS Quality Surveys Rank]
      ,[prod_pieces]  as [Productivity Pieces]
      ,[prod_hours] as [Productivity Hours]
      ,[prod_rate] as [Productivity Rate]
      ,[prod_goal] as [Productivity Goal]
      ,([prod_vs_goal] / 100) as [Productivity vs Goal]
      ,[prod_rating] as [Productivity Rating]
      ,Case When [prod_rank] = 0 then Null Else [prod_rank] End as [Productivity Rank]
      ,[cap_stg_testing] as [Staged for Testing]
      ,[cap_wkly_testing] as [Testing per Week]
      ,[cap_weeks_supply] as [Weeks of Supply]
      ,Case When [cap_rank] = 0 then Null Else [cap_rank] End as [Capacity Rank]
      ,[serv_cost_unit] as [Service Cost/Unit Received]
      ,[serv_cost_rating] as [Service Cost Rating]
      ,Case When [serv_cost_rank] = 0 then Null Else [serv_cost_rank] End as [Service Cost Rank]
      ,Case When [junk_score_rank] = 0 then Null Else [junk_score_rank] End as [Junk Scorecard Ranking]
      ,[junk_rating] as [Junk Scorecard Rating]
      ,Case When [junk_rank] = 0 then Null Else [junk_rank] End as [Junk Scorecard Ranking Rank]
      ,[over_score_rtg] as [Overall Rating]
      ,Case When [over_score_rtg_rank] = 0 then Null Else [over_score_rtg_rank] End as [Overall Rating Rank]
      ,[over_score_rnk] as [Overall Ranking]
      ,Case When [over_score_rnk_rank] = 0 then Null Else [over_score_rnk_rank] End as [Overall Ranking Rank]
      ,[pr_month_ytd_rank] as [Prior Month YTD Rank]
  FROM [sho_dw].[fact].[ordc_scorecard]  


GO

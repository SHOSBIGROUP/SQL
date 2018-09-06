USE [sho_dw]
GO

/****** Object:  View [dbo].[sls_dly_trs_tyly_vw]    Script Date: 9/6/2018 1:33:04 PM ******/
DROP VIEW [dbo].[sls_dly_trs_tyly_vw]
GO

/****** Object:  View [dbo].[sls_dly_trs_tyly_vw]    Script Date: 9/6/2018 1:33:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--use sho_edw
create view [dbo].[sls_dly_trs_tyly_vw]
as
SELECT
  salesty.fiscal_year_nbr,
  salesty.fiscal_week_nbr,
  salesty.fiscal_month_nbr,
  salesty.trs_dt,
POS,
EIS,
SN,
District_Number,
Region,
Store_Format,
Date_Opened,
Franchise,
Franchise_8,
Store_Classification,
Closed_Date,
comparable_last_year_calendar_dt,
  salesty.location,
  case when comparable_last_year_calendar_dt>=Closed_Date then  SUM(salesty.net_sales) end as comp_sales_ty,
  case when comparable_last_year_calendar_dt>=Closed_Date then  SUM(salesly.net_sales) end as comp_sales_ly,
  SUM(salesty.net_sales) Net_Sales,
  SUM(salesty.net_units) Net_Units,
  SUM(salesly.net_sales) Net_Sales_LY,
  SUM(salesly.net_units) Net_Units_LY,
  SUM(salesty.kenmore_sales) Kenmore_Sales,
  SUM( salesty.Total_Md_Amt) Total_Md_Amt,
  SUM(salesly.kenmore_sales) Kenmore_Sales_LY,
  SUM( salesly.Total_Md_Amt) Total_Md_Amt_LY,
  SUM( salesty.Craftsman_Sales) Craftsman_Sales,
  SUM( salesty.Carftsman_Units) Carftsman_Units,
   SUM( salesly.Craftsman_Sales) Craftsman_Sales_LY,
  SUM( salesly.Carftsman_Units) Carftsman_Unit_LY,
    Sum(salesty.PA_Sales) as PA_Sales,
  Sum(salesty.PA_Units) as PA_Units,
    Sum(salesly.PA_Sales) as PA_Sales_LY,
  Sum(salesly.PA_Units) as PA_Units_LY,
  Sum(salesty.PAM_Sales) as PAM_Sales,
  SUM(salesty.PAM_Units) as PAM_Units,
   Sum(salesly.PAM_Sales) as PAM_Sales_LY,
  SUM(salesly.PAM_Units) as PAM_Units_LY,
  SUM(salesty.SPP_Sales) as SPP_Sales,
  SUM(salesty.SPP_Units) as SPP_Units,
    SUM(salesly.SPP_Sales) as SPP_Sales_LY,
  SUM(salesly.SPP_Units) as SPP_Units_LY,
  Sum(salesty.Lease_Sales) as Lease_Sales,
  Sum(salesty.Lease_Units) as Lease_Units,
    Sum(salesly.Lease_Sales) as Lease_Sales_LY,
  Sum(salesly.Lease_Units) as Lease_Units_LY,
  Sum(salesty.Bulk_Sales) as Bulk_Sales,
  Sum(salesty.Bulk_Units) as Bulk_Units,
   Sum(salesly.Bulk_Sales) as Bulk_Sales_LY,
  Sum(salesly.Bulk_Units) as Bulk_Units_LY,
Sum(salesty.Sears_Credit_Sales) as Sears_Credit_Sales	,
Sum(salesty.Other_Credit_Sales) as Other_Credit_Sales,
Sum(salesly.Sears_Credit_Sales) as Sears_Credit_Sales_LY	,
Sum(salesly.Other_Credit_Sales) as Other_Credit_Sales_LY,
Sum(salesty.Avg_Ticket_sales) as Avg_Ticket_sales,
Sum(salesty.Avg_Ticket_Units) as Avg_Ticket_Units,
Sum(salesly.Avg_Ticket_sales) as Avg_Ticket_sales_LY,
Sum(salesly.Avg_Ticket_Units) as Avg_Ticket_Units_LY,
Sum(salesty.Plan_Amt) as Plan_Amt,
sum(salesty.Forecast_Amt) as Forecast_Amt,
sum(salesly.Plan_Amt) as Plan_Amt_LY,
sum(salesly.Forecast_Amt) as Forecast_Amt_LY,
sum(salesty.gp_amt) as gp_sales,
sum(salesly.gp_amt) as gp_sales_LY
FROM  (select *  from 
  sls_dly_trs_fact as pa
INNER JOIN (
  SELECT
    calendar_dt,
    fiscal_week_nbr,
    fiscal_week_start_dt,
    fiscal_week_end_dt,
    fiscal_month_nbr,
    fiscal_month_start_dt,
    fiscal_month_end_dt,
    fiscal_year_nbr,
    fiscal_year_start_dt,
    fiscal_year_end_dt,
    comparable_last_year_calendar_dt,
    comparable_last_year_week_nbr,
    comparable_last_year_month_nbr,
    comparable_last_year_nbr,
    comparable_last_year_week_start_dt,
    comparable_last_year_week_end_dt,
    comparable_last_year_month_start_dt,
    comparable_last_year_month_end_dt
  FROM
    Fiscal_Calendar_Dim
  -- WHERE
   -- calendar_dt = '2018-04-11'
    ) pl
ON
  pa.trs_dt= pl.calendar_dt
left outer JOIN (
  SELECT
  * 
  FROM
    sho_location_dim_new) ps
ON
  pa.location=ps.pos ) salesty
  LEFT OUTER JOIN  sls_dly_trs_fact as salesly
ON
  salesly.trs_dt = salesty.comparable_last_year_calendar_dt
  AND salesty.location=salesly.location
GROUP BY
  salesty.fiscal_year_nbr,
  salesty.fiscal_week_nbr,
  salesty.fiscal_month_nbr,
  salesty.trs_dt,
 POS,
EIS,
SN,
District_Number,
Region,
Store_Format,
Date_Opened,
Franchise,
Franchise_8,
Store_Classification,
Closed_Date,
  salesty.location,
  comparable_last_year_calendar_dt
GO


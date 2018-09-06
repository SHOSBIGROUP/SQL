USE [sho_dw]
GO

/****** Object:  View [dbo].[sho_location_imu_lookup_loc_vw]    Script Date: 9/6/2018 1:31:26 PM ******/
DROP VIEW [dbo].[sho_location_imu_lookup_loc_vw]
GO

/****** Object:  View [dbo].[sho_location_imu_lookup_loc_vw]    Script Date: 9/6/2018 1:31:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--use sho_edw

create  view [dbo].[sho_location_imu_lookup_loc_vw]
as
select  '2018-04-11' as imu_date,loc.POS ,loc.Store_Format loc_format ,IMU.store_Format imu_format, Div, Divname, div_divname, IMU_Current_Week, Cost_Current_Week, Customer_Adjustment_Current_Week
from 
sho_location_dim_new loc 
left outer join
(Select *  from IMU_Lookup where  ( --div   like 'Other%' or div    like 'SBU%' or
div    like 'Total%')) imu
on loc.Store_Format =imu.store_format 
--order by POS
GO


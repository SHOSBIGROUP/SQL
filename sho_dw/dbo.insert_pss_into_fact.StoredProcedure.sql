USE [sho_dw]
GO
/****** Object:  StoredProcedure [dbo].[insert_pss_into_fact]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP PROCEDURE [dbo].[insert_pss_into_fact]
GO
/****** Object:  StoredProcedure [dbo].[insert_pss_into_fact]    Script Date: 11/13/2018 3:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insert_pss_into_fact] (@trunc int)
as
	if @trunc = 1
	truncate table sho_edw.dbo.pss_scorecard;

	insert into sho_edw.dbo.pss_scorecard_fact
	([Facility]
     ,[Total_images]
     ,[Items_with_image]
     ,[Manager_special_1]
     ,[Manager_special_2]
     ,[Percent_to_TTL_1]
     ,[Percent_to_TTL_2]
     ,[Hours]
     ,[PPH]
     ,[Items_per_hour]
     ,[Floor_model]
     ,[Scratch_on_front]
     ,[Scratch_on_side]
     ,[Scratch_on_top]
     ,[Dent_on_front]
     ,[Dent_on_side]
     ,[Dent_on_top]
     ,[ecomm_load_dt])


Select
				
				Facility,
                Total_images,
                Items_with_image,
                Manager_special_1,
                Manager_special_2,
                Percent_to_TTL_1,
                Percent_to_TTL_2,
                Hours,
                (Total_images/hours) as PPH,
            (Items_with_image/hours) as Items_per_hour,
                coalesce(Floor_model,0) as Floor_model,
                coalesce(Scratch_on_front,0) as Scratch_on_front,
                coalesce(Scratch_on_side,0) as Scratch_on_side,
                coalesce(Scratch_on_top,0) as Scratch_on_top,
                coalesce(Dent_on_front,0) as Dent_on_front,
                coalesce(Dent_on_side,0) as Dent_on_side,
                coalesce(Dent_on_top,0) as Dent_on_top,
                ecomm_load_dt
from
( select Distinct
				outlet_load_time,
                Facility,
                Total_images,
                Items_with_image,
                Manager_special_1,
                Manager_special_2,
                ((Manager_special_1/Items_with_image)) as percent_to_TTL_1,
                ((Manager_special_2/Items_with_image)) as percent_to_TTL_2,
                CASE WHEN facility IN (4604,4616,7508,9401) then 37 else 74 end as hours,            
                Floor_model,
                Scratch_on_front,
                Scratch_on_side,
                Scratch_on_top,
                Dent_on_front,
                Dent_on_side,
                Dent_on_top,
                ecomm_load_dt
from(
 SELECT outlet_load_time,  
		location_city_desc       AS facility ,
         Count( DISTINCT item_uid)AS items_with_image,
         Count(distinct image_url)         AS total_images,
         Sum(floor_model)         AS floor_model,
         Sum(scratch_on_front)    AS scratch_on_front,
         Sum(scratch_on_side)     AS scratch_on_side,
         Sum(scratch_on_top)      AS scratch_on_top,
         Sum(dent_on_front)       AS dent_on_front,
         Sum(dent_on_side)        AS dent_on_side,
         Sum(dent_on_top)         AS dent_on_top ,
                 COUNT( distinct CASE
                                WHEN (image_view = 'SPECIAL1_A'
                                        OR     image_view = 'SPECIAL1_B') THEN item_uid
                                        ELSE NULL
                END) as Manager_special_1,
                COUNT( distinct CASE
                                WHEN (image_view = 'SPECIAL2_A'
                                OR     image_view = 'SPECIAL2_B') THEN item_uid
                        ELSE NULL
                END) Manager_special_2,
                 ecomm_load_dt
FROM     (
 SELECT distinct 	   ordc_no as location_city_desc ,
					   outlet_load_time,
					   ecomm_load_dt,
                       item_uid,
                       image_view,
                       image_url,
                       CASE
                              WHEN value = 'FLOOR_MODEL' THEN 1
                       END AS floor_model,
                       CASE
                              WHEN value = 'SCRATCH_FRONT' THEN 1
                       END AS scratch_on_front,
                       CASE
                              WHEN value = 'SCRATCH_SIDE' THEN 1
                       END AS scratch_on_side,
                       CASE
                              WHEN value = 'SCRATCH_TOP' THEN 1
                       END AS scratch_on_top,
                       CASE
                              WHEN value = 'DENT_FRONT' THEN 1
                       END AS dent_on_front,
                       CASE
                              WHEN value = 'DENT_SIDE' THEN 1
                       END AS dent_on_side,
                       CASE
                              WHEN value = 'DENT_TOP' THEN 1
                       END AS dent_on_top

 FROM   (
	SELECT  outlet_load_time,
		image_view,
	  item_uid,
	  ordc_no,
	  image_url	,
	  value		
	  ,load_dt	as ecomm_load_dt										   
	  from [sho_staging].[dbo].[pss_scorecard] 
	  cross apply  string_split(product_conditions,'#') 
	  where value<>''

	) as1
)as2
group by location_city_desc,ecomm_load_dt, outlet_load_time, ecomm_load_dt
)as3)as4

GO

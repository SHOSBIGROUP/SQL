USE [sho_dw]
GO
/****** Object:  View [dbo].[Product_Hierarchy_vw]    Script Date: 10/1/2018 10:00:10 AM ******/
DROP VIEW [dbo].[Product_Hierarchy_vw]
GO
/****** Object:  View [dbo].[Product_Hierarchy_vw]    Script Date: 10/1/2018 10:00:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use sho_edw

create  view [dbo].[Product_Hierarchy_vw] as 
select distinct div_no,div_nm,a.cat_no,cat_nm from Product_Hierarchy_Dim a 
left outer join Product_Hierarchy_Category_Dim b
on a.cat_no=b.cat_no
GO

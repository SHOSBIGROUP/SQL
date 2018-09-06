USE [sho_dw]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sho_sales_tyly_fact'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sho_sales_tyly_fact'
GO

/****** Object:  View [sales].[vw_sho_sales_tyly_fact]    Script Date: 9/6/2018 1:34:27 PM ******/
DROP VIEW [sales].[vw_sho_sales_tyly_fact]
GO

/****** Object:  View [sales].[vw_sho_sales_tyly_fact]    Script Date: 9/6/2018 1:34:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [sales].[vw_sho_sales_tyly_fact]
AS
SELECT        fact.sho_sales.daily_loc_div_sales_fact_sk_id, fact.sho_sales.trs_dt_sk_id, fact.sho_sales.prod_cat_div_sk_id, fact.sho_sales.sho_location_sk_id, fact.sho_sales.trs_dt, fact.sho_sales.pos_nbr, fact.sho_sales.div_nbr, 
                         fact.sho_sales.cat_nbr, fact.sho_sales.net_sales, fact.sho_sales.net_units, fact.sho_sales.kenmore_sales, fact.sho_sales.kenmore_units, fact.sho_sales.total_md_amt, fact.sho_sales.craftsman_sales, 
                         fact.sho_sales.carftsman_units, fact.sho_sales.diehard_sales, fact.sho_sales.diehard_units, fact.sho_sales.avg_ticket_amt, fact.sho_sales.avg_ticket_units, fact.sho_sales.pos_source_system, fact.sho_sales.pa_sales, 
                         fact.sho_sales.pa_units, fact.sho_sales.lease_sales, fact.sho_sales.lease_units, fact.sho_sales.pam_sales, fact.sho_sales.pam_units, fact.sho_sales.spp_merch_sales, fact.sho_sales.spp_merch_units, 
                         fact.sho_sales.rec_load_dt, fact.sho_sales.rec_upd_dt, fact.sho_sales.imu_lookup_dim_sk_id, fact.sho_sales_plan_gp_by_loc.sales_plan_amt, fact.sho_sales_plan_gp_by_loc.gp_plan_amt
FROM            fact.sho_sales INNER JOIN
                         fact.sho_sales_plan_gp_by_loc ON fact.sho_sales.sho_location_sk_id = fact.sho_sales_plan_gp_by_loc.sho_location_sk_id AND fact.sho_sales.trs_dt_sk_id = fact.sho_sales_plan_gp_by_loc.plan_dt_sk_id
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "sho_sales (fact)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 219
               Right = 280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sho_sales_plan_gp_by_loc (fact)"
            Begin Extent = 
               Top = 6
               Left = 318
               Bottom = 211
               Right = 699
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sho_sales_tyly_fact'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sho_sales_tyly_fact'
GO


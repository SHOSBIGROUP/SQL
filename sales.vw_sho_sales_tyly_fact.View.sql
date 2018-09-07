USE [sho_dw]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sho_sales_tyly_fact'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sho_sales_tyly_fact'
GO
/****** Object:  View [sales].[vw_sho_sales_tyly_fact]    Script Date: 9/7/2018 11:37:47 AM ******/
DROP VIEW [sales].[vw_sho_sales_tyly_fact]
GO
/****** Object:  View [sales].[vw_sho_sales_tyly_fact]    Script Date: 9/7/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [sales].[vw_sho_sales_tyly_fact]
AS
SELECT        fact.sho_sales.trs_dt_sk_id, fact.sho_sales.prod_cat_div_sk_id, fact.sho_sales.pos_source_system, dim.sho_location_formats.location_format_title, dim.sho_location_formats.location_format_manager, fact.sho_sales.trs_dt, 
                         fact.sho_sales.div_nbr, fact.sho_sales.cat_nbr, SUM(fact.sho_sales.net_sales) AS net_sales, SUM(fact.sho_sales.net_units) AS net_units, SUM(fact.sho_sales.kenmore_sales) AS kenmore_sales, 
                         SUM(fact.sho_sales.kenmore_units) AS kenmore_units, SUM(fact.sho_sales.total_md_amt) AS total_md_amt, SUM(fact.sho_sales.craftsman_sales) AS craftsman_sales, SUM(fact.sho_sales.carftsman_units) AS carftsman_units,
                          SUM(fact.sho_sales.diehard_sales) AS diehard_sales, SUM(fact.sho_sales.diehard_units) AS diehard_units, SUM(fact.sho_sales.avg_ticket_amt) AS avg_ticket_amt, SUM(fact.sho_sales.avg_ticket_units) AS avg_ticket_units, 
                         SUM(fact.sho_sales.pa_sales) AS pa_sales, SUM(fact.sho_sales.pa_units) AS pa_units, SUM(fact.sho_sales.lease_sales) AS lease_sales, SUM(fact.sho_sales.lease_units) AS lease_units, SUM(fact.sho_sales.pam_sales) 
                         AS pam_sales, SUM(fact.sho_sales.pam_units) AS pam_units, SUM(fact.sho_sales.spp_merch_sales) AS spp_merch_sales, SUM(fact.sho_sales.spp_merch_units) AS spp_merch_units
FROM            fact.sho_sales INNER JOIN
                         dim.location ON fact.sho_sales.sho_location_sk_id = dim.location.sho_location_sk_id INNER JOIN
                         dim.sho_location_formats ON dim.location.sho_location_format_sk_id = dim.sho_location_formats.sho_location_format_sk_id
GROUP BY fact.sho_sales.trs_dt_sk_id, fact.sho_sales.prod_cat_div_sk_id, fact.sho_sales.trs_dt, fact.sho_sales.div_nbr, fact.sho_sales.cat_nbr, fact.sho_sales.pos_source_system, dim.sho_location_formats.location_format_title, 
                         dim.sho_location_formats.location_format_manager
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[21] 4[60] 2[14] 3) )"
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
               Bottom = 259
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "location (dim)"
            Begin Extent = 
               Top = 75
               Left = 283
               Bottom = 289
               Right = 444
            End
            DisplayFlags = 280
            TopColumn = 16
         End
         Begin Table = "sho_location_formats (dim)"
            Begin Extent = 
               Top = 71
               Left = 538
               Bottom = 269
               Right = 766
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
      Begin ColumnWidths = 12
         Column = 2985
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 2115
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sho_sales_tyly_fact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sho_sales_tyly_fact'
GO

USE [sho_dw]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sls_wkly_loc_div_cogs_out'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sls_wkly_loc_div_cogs_out'
GO
/****** Object:  View [sales].[vw_sls_wkly_loc_div_cogs_out]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP VIEW [sales].[vw_sls_wkly_loc_div_cogs_out]
GO
/****** Object:  View [sales].[vw_sls_wkly_loc_div_cogs_out]    Script Date: 11/13/2018 3:54:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [sales].[vw_sls_wkly_loc_div_cogs_out]
AS
SELECT DISTINCT cal.calendar_dt_sk_id, COGS_OUT.div_nbr, COGS_OUT.fiscal_year_nbr, COGS_OUT.fiscal_week_nbr, CONVERT(decimal(11, 2), COGS_OUT.cogs_amt) AS cogs_amt, cal.calendar_dt
FROM            (SELECT        CONVERT(int, SUBSTRING(trim(year_title), 1, 4)) AS fiscal_year_nbr, CONVERT(int, REPLACE(trim(week_title), 'Week', '')) AS fiscal_week_nbr, CONVERT(int, CONVERT(char(3), trim(SUBSTRING(div_title, 
                                                    CHARINDEX('(', div_title) + 1, 4)))) AS div_nbr, cogs_amt
                          FROM            sho_staging.finance.week_fmt_div_outlet_cogs_stg
                          WHERE        (essbase_pull_title = 'Total COGS') AND (div_title LIKE '%(%)%')) AS COGS_OUT INNER JOIN
                         dim.calendar AS cal ON cal.fiscal_year_nbr = COGS_OUT.fiscal_year_nbr AND cal.fiscal_week_nbr = COGS_OUT.fiscal_week_nbr
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
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "COGS_OUT"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cal"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 281
               Right = 337
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
' , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sls_wkly_loc_div_cogs_out'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'sales', @level1type=N'VIEW',@level1name=N'vw_sls_wkly_loc_div_cogs_out'
GO

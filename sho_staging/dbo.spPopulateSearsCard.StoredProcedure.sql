USE [sho_staging]
GO
/****** Object:  StoredProcedure [dbo].[spPopulateSearsCard]    Script Date: 10/26/2018 4:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spPopulateSearsCard] 
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update [sho_staging].[dbo].[DeferredNonDeferredsalesHeaderResults653] set [Subtotal] = Replace(Replace([Subtotal],'"',''),',','');

	update [sho_staging].[dbo].[DeferredNonDeferredsalesResults848] set [Amount (Net)] = Replace(Replace([Amount (Net)],'"',''),',','');

	update [sho_staging].[dbo].[TestpaymentsearchResults36] set [Amount] = Replace(Replace([Amount],'"',''),',',''), [Amount_1] = Replace(Replace([Amount_1],'"',''),',','');

	Truncate Table sho_staging.dbo.Sales_Card_Header;

	Truncate Table sho_staging.dbo.Sales_Card_Line;

	Truncate Table sho_staging.dbo.Sales_Card_Payment;

	Insert Into sho_staging.dbo.Sales_Card_Header ([document_nbr],[sales_amt_total],[sales_dt],[transaction_src],[status_desc],[location_type],[name],[internalid],[close_dt])
	Select Convert(varchar(15),[Document Number]),Convert(decimal(11,2),[Subtotal]),Convert(datetime,[Date Created]),Convert(varchar(25),[Transaction Source]),Convert(varchar(25),[Status]),Convert(varchar(3),[Store Type]),Convert(varchar(15),[Name (no hierarchy)]),Convert(varchar(15),[Internal ID]),Convert(datetime,[Date Closed]) 
	From sho_staging.dbo.DeferredNonDeferredsalesHeaderResults653;

	Insert Into sho_staging.dbo.Sales_Card_Line ([document_nbr],[sales_amt],[sales_dt],[transaction_src],[status_desc],[item_nbr],[div_nbr],[location_format],[name],[internalid],[promotion],[promotion_status_applied],[close_dt]) 
	Select Convert(varchar(15),[Document Number]),Convert(decimal,[Amount (Net)]),Convert(datetime,[Date Created]),Convert(varchar(25),[Transaction Source]),Convert(varchar(25),[Status]),Convert(varchar(50),[Item]),Convert(char(3),[Division #]),Convert(varchar(15),[Store Type]),Convert(varchar(15),[Name (no hierarchy)]),Convert(varchar(15),[Internal ID]),Convert(varchar(50),[Promotion]),Convert(varchar(15),[Applied Promotion Status]),Convert(datetime,[Date Closed])
	From sho_staging.dbo.DeferredNonDeferredsalesResults848;

	Insert Into sho_staging.dbo.Sales_Card_Payment ([document_nbr],[payment_amt],[payment_dt],[account_desc],[payment_type_desc],[payment_method_desc],[status_desc],[internalid],[created_from],[other_amt],[close_dt]) 
	Select Convert(varchar(15),[Document Number]),Convert(decimal,[Amount]),Convert(datetime,[Date]),Convert(varchar(150),[Account]),Convert(varchar(50),[Type]),Convert(varchar(50),[Payment Method]),Convert(varchar(25),[Status]),Convert(varchar(15),[Internal ID]),Convert(varchar(50),[Created From]),Convert(varchar(20),[Amount_1]),Convert(datetime,[Date Closed])
	From sho_staging.dbo.TestpaymentsearchResults36;

	update sales_card_line set div_nbr = right('000' + trim(div_nbr),3) where len(div_nbr) > 0;

	DBCC DBREINDEX (Sales_Card_Header,'',95);
	DBCC DBREINDEX (Sales_Card_Line,'',95);
	DBCC DBREINDEX (Sales_Card_Payment,'',95);

END
GO

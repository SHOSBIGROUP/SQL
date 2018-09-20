use sho_staging;
GO

Update netsuite.product set [Inactive] = TRIM([Inactive]);
Update netsuite.product set [Contract Item Type] = TRIM([Contract Item Type]);
Update netsuite.product set [Item Brand] = TRIM([Item Brand]);
Update netsuite.product set [Product Brand ID] = TRIM([Product Brand ID]);
Update netsuite.product set [Manufacturer] = TRIM([Manufacturer]);
Update netsuite.product set [Item Mfgn Number] = TRIM([Item Mfgn Number]);
Update netsuite.product set [UPC Code] = TRIM([UPC Code]);
Update netsuite.product set [SKU #] = TRIM([SKU #]);
Update netsuite.product set [Item No] = TRIM([Item No]);
Update netsuite.product set [Description] = TRIM([Description]);
Update netsuite.product set [Category No] = TRIM([Category No]);
Update netsuite.product set [Category Name] = TRIM([Category Name]);
Update netsuite.product set [Division #] = TRIM([Division #]);
Update netsuite.product set [Div No] = TRIM([Div No]);
Update netsuite.product set [Div Name] = TRIM([Div Name]);
Update netsuite.product set [Line No] = TRIM([Line No]);
Update netsuite.product set [Line Name] = TRIM([Line Name]);
Update netsuite.product set [Subline No] = TRIM([Subline No]);
Update netsuite.product set [Subline Name] = TRIM([Subline Name]);
Update netsuite.product set [Class No] = TRIM([Class No]);
Update netsuite.product set [Class Name] = TRIM([Class Name]);
Update netsuite.product set [Regular Price (3H)] = TRIM([Regular Price (3H)]);
Update netsuite.product set [List Price (Outlet)] = TRIM([List Price (Outlet)]);
Update netsuite.product set [MSRP] = TRIM([MSRP]);
Update netsuite.product set [Average Cost] = TRIM([Average Cost]);
Update netsuite.product set [Height (in.)] = TRIM([Height (in.)]);
Update netsuite.product set [Shipping Height] = TRIM([Shipping Height]);
Update netsuite.product set [Width (in.)] = TRIM([Width (in.)]);
Update netsuite.product set [Shipping Width] = TRIM([Shipping Width]);
Update netsuite.product set [Regular Price (3H)] = '0' WHERE [Regular Price (3H)] = '';
Update netsuite.product set [List Price (Outlet)] = '0' WHERE [List Price (Outlet)] = '';
Update netsuite.product set [MSRP] = '0' WHERE [MSRP] = '';
Update netsuite.product set [Average Cost] = '0' WHERE [Average Cost]  = '';
Update netsuite.product set [Height (in.)] = '0' WHERE [Height (in.)]  = '';
Update netsuite.product set [Shipping Height]  = '0' WHERE [Shipping Height]  = '';
Update netsuite.product set [Width (in.)] = '0' WHERE [Width (in.)]  = '';
Update netsuite.product set [Shipping Width] = '0' WHERE [Shipping Width]  = '';
Update netsuite.product set [Regular Price (3H)] = '0' WHERE [Regular Price (3H)] = '';
Update netsuite.product set [List Price (Outlet)] = '0' WHERE [List Price (Outlet)] = '';
Update netsuite.product set [MSRP] = '0' WHERE [MSRP] = '';
Update netsuite.product set [Average Cost] = '0' WHERE [Average Cost]  = '';
Update netsuite.product set [Height (in.)] = '0' WHERE [Height (in.)]  = '';
Update netsuite.product set [Shipping Height]  = '0' WHERE [Shipping Height]  = '';
Update netsuite.product set [Width (in.)] = '0' WHERE [Width (in.)]  = '';
Update netsuite.product set [Shipping Width] = '0' WHERE [Shipping Width]  = '';

use sho_dw;
GO

Truncate Table [dim].[product]

INSERT INTO [dim].[product]
           ([cat_div_sk_id]
		   ,[inactive]
           ,[cat_nbr]
           ,[cat_name]
           ,[div_nbr]
           ,[div_name]
           ,[ln_nbr]
           ,[ln_desc]
           ,[sbl_nbr]
           ,[sbl_desc]
           ,[cls_nbr]
           ,[cls_desc]
           ,[item_nbr]
           ,[item_desc]
           ,[sku_nbr]
           ,[upc_code]
           ,[manufacturer_nbr]
           ,[manufacturer_name]
           ,[brand_id]
           ,[brand_desc]
           ,[contract_item_type]
		   ,[height]
           ,[width]
           ,[shipping_height]
           ,[shipping_width]
           ,[list_price]
           ,[regular_price]
           ,[msrp_price]
           ,[weighted_avg_cost]
           ,[rec_load_dt]
           )
SELECT   [cat_div_sk_id]
		,0
		 ,convert(char(3),[Category No])
		 ,convert(varchar(50),[Category Name])
		 ,convert(char(3),[Div No])
		 ,convert(varchar(50),[Div Name])
		 ,convert(char(3),[Line No])
		 ,convert(varchar(100),[Line Name])
		 ,convert(char(3),[Subline No])
		 ,convert(varchar(50),[Subline Name])
		 ,convert(char(3),[Class No])
		 ,convert(varchar(50),[Class Name])
		 ,convert(varchar(50),[Item No])
		 ,convert(varchar(100),[Description])
		 ,convert(char(3),[SKU #])
		,convert(varchar(20),[UPC Code])
		,convert(varchar(50),[Item Mfgn Number])
		,convert(varchar(100),[Manufacturer])
		,convert(varchar(50),[Product Brand ID])
		,convert(varchar(500),[Item Brand])
		,convert(varchar(5),[Contract Item Type])
		,convert(decimal(11,2),[Height (in.)])
        ,convert(decimal(11,2),[Width (in.)])
        ,convert(decimal(11,2),[Shipping Height])
		,convert(decimal(11,2),[Shipping Width])
		,convert(decimal(11,2),[List Price (Outlet)])
		,convert(decimal(11,2),[Regular Price (3H)])
		,convert(decimal(11,2),[MSRP])
        ,convert(decimal(11,2),[Average Cost])
        ,GETDATE()  
    FROM [sho_staging].[netsuite].[product]
Go

UPDATE dim.product SET cat_div_sk_id = dim.category_division.cat_div_sk_id FROM dim.category_division INNER JOIN dim.product ON dim.category_division.cat_nbr = dim.product.cat_nbr and dim.category_division.div_nbr = dim.product.cat_nbr;

UPDATE dim.product SET cat_div_sk_id = -1 where cat_div_sk_id IS NULL;

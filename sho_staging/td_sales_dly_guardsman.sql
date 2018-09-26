create table teradata.td_sales_dly_guardsman (
	TRS_DT date null,
	LOC_NO int null,
	NetSales float null,
	UnitsSold int null,
	REC_LOAD_DTM datetime default current_timestamp
)
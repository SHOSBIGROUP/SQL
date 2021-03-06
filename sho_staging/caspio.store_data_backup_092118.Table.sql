USE [sho_staging]
GO
/****** Object:  Table [caspio].[store_data_backup_092118]    Script Date: 10/26/2018 4:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [caspio].[store_data_backup_092118](
	[Location_Store] [varchar](50) NULL,
	[Format] [varchar](50) NULL,
	[LocnType] [varchar](50) NULL,
	[StoreType] [varchar](50) NULL,
	[Store] [int] NULL,
	[EIS] [int] NULL,
	[District] [int] NULL,
	[Region] [int] NULL,
	[DBA] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[ST] [varchar](50) NULL,
	[ZipCode] [varchar](7) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[Longitude] [real] NULL,
	[Latitude] [real] NULL,
	[PhoneNumber] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[DDC] [varchar](50) NULL,
	[RRC] [varchar](50) NULL,
	[OpenDate] [date] NULL,
	[ChangeOfOwnerDate] [date] NULL,
	[ContractIssueDate] [varchar](50) NULL,
	[ContractExpiryDate] [varchar](50) NULL,
	[OwnerType] [varchar](50) NULL,
	[rec_load_dtm] [datetime] NOT NULL
) ON [PRIMARY]
GO

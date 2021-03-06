USE [sho_staging]
GO
/****** Object:  Table [caspio].[store_data_raw_091918]    Script Date: 10/26/2018 4:02:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [caspio].[store_data_raw_091918](
	[Location_Store] [nvarchar](255) NULL,
	[Format] [nvarchar](255) NULL,
	[LocnType] [nvarchar](255) NULL,
	[StoreType] [nvarchar](255) NULL,
	[Store] [float] NULL,
	[EIS] [float] NULL,
	[District] [float] NULL,
	[Region] [float] NULL,
	[ROLPM] [nvarchar](255) NULL,
	[DBA] [nvarchar](255) NULL,
	[Location] [nvarchar](255) NULL,
	[DSM] [nvarchar](255) NULL,
	[RSD] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[ST] [nvarchar](255) NULL,
	[ZipCode] [float] NULL,
	[Address1] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[PhoneNumber] [nvarchar](255) NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[DDC] [nvarchar](255) NULL,
	[RRC] [nvarchar](255) NULL,
	[OpenDate] [nvarchar](255) NULL,
	[ChangeOfOwnerDate] [nvarchar](255) NULL,
	[ContractIssueDate] [nvarchar](255) NULL,
	[ContractExpiryDate] [nvarchar](255) NULL,
	[OwnerType] [nvarchar](255) NULL,
	[Locn_Distro_Email] [nvarchar](255) NULL,
	[DSM_Distro_Email] [nvarchar](255) NULL,
	[Locn_Email] [nvarchar](255) NULL,
	[Locn_Alt_Email] [nvarchar](255) NULL,
	[Outlet_Locn_Alt_Locn_Email] [nvarchar](255) NULL,
	[Outlet_Locn_Alt_Locn_RL_Email] [nvarchar](255) NULL,
	[DSM_RSD_DSO_ROLPM_FVP_Email] [nvarchar](255) NULL,
	[DSM_RSD_DSO_ROLPM_Email] [nvarchar](255) NULL,
	[DSM_RSD_ROLPM_Email] [nvarchar](255) NULL,
	[DSM_Email] [nvarchar](255) NULL,
	[RSD_Email] [nvarchar](255) NULL,
	[DSO_Email] [nvarchar](255) NULL,
	[ROLPM_Email] [nvarchar](255) NULL,
	[Format_VP_Email] [nvarchar](255) NULL,
	[Test_Email] [nvarchar](255) NULL,
	[NPI_Weekly_Rpt_Email_Generate] [nvarchar](255) NULL
) ON [PRIMARY]
GO

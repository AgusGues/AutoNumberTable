USE [new_final_erp]
GO

/****** Object:  Table [dbo].[NumberSequence]    Script Date: 4/14/2026 10:39:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NumberSequence](
	[SequenceId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[EntityName] [nvarchar](50) NOT NULL,
	[Prefix] [nvarchar](20) NOT NULL,
	[NumberLength] [int] NOT NULL,
	[ResetType] [char](1) NOT NULL,
	[VersionNo] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SequenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[NumberSequence] ADD  DEFAULT ((1)) FOR [VersionNo]
GO

ALTER TABLE [dbo].[NumberSequence] ADD  DEFAULT ((1)) FOR [IsActive]
GO



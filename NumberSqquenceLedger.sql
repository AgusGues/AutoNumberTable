USE [new_final_erp]
GO

/****** Object:  Table [dbo].[NumberSequenceLedger]    Script Date: 4/14/2026 10:44:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NumberSequenceLedger](
	[LedgerId] [uniqueidentifier] NOT NULL,
	[SequenceId] [int] NOT NULL,
	[SegmentKey] [nvarchar](20) NOT NULL,
	[RunningNumber] [bigint] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[DocumentNo] [nvarchar](100) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LedgerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[NumberSequenceLedger]  WITH CHECK ADD  CONSTRAINT [FK_Ledger_Sequence] FOREIGN KEY([SequenceId])
REFERENCES [dbo].[NumberSequence] ([SequenceId])
GO

ALTER TABLE [dbo].[NumberSequenceLedger] CHECK CONSTRAINT [FK_Ledger_Sequence]
GO



USE [new_final_erp]
GO

/****** Object:  Table [dbo].[NumberSequenceCounter]    Script Date: 4/14/2026 10:43:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NumberSequenceCounter](
	[SequenceId] [int] NOT NULL,
	[SegmentKey] [nvarchar](20) NOT NULL,
	[LastNumber] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SequenceId] ASC,
	[SegmentKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[NumberSequenceCounter]  WITH CHECK ADD  CONSTRAINT [FK_Counter_Sequence] FOREIGN KEY([SequenceId])
REFERENCES [dbo].[NumberSequence] ([SequenceId])
GO

ALTER TABLE [dbo].[NumberSequenceCounter] CHECK CONSTRAINT [FK_Counter_Sequence]
GO



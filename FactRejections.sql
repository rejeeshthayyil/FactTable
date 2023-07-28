USE [Onlinestore]
GO

/****** Object:  Table [Report].[FactRejections]    Script Date: 28/07/2023 14:08:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Report].[FactRejections](
	[RejectionId] [int] IDENTITY(1,1) NOT NULL,
	[OptionId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[SKU] [varchar](30) NULL,
	[ShootTypeId] [int] NOT NULL,
	[StudioId] [int] NOT NULL,
	[ShootDateId] [int] NOT NULL,
	[ReasonId] [int] NOT NULL,
	[ReasonComments] [varchar](50) NULL,
	[FromTeam] [varchar](50) NULL,
	[ToTeam] [varchar](50) NULL,
	[CorrelationId] [varchar](50) NULL,
	[EventTypeId] [int] NOT NULL,
	[EventTimeStamp] [datetime] NOT NULL,
	[LastUpdatedTimeStamp] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RejectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Report].[FactRejections]  WITH CHECK ADD FOREIGN KEY([EventTypeId])
REFERENCES [Report].[DimEventType] ([EventTypeId])
GO

ALTER TABLE [Report].[FactRejections]  WITH CHECK ADD FOREIGN KEY([ReasonId])
REFERENCES [Report].[DimReasonCode] ([ReasonId])
GO

ALTER TABLE [Report].[FactRejections]  WITH CHECK ADD FOREIGN KEY([ShootDateId])
REFERENCES [Report].[DimShootDate] ([ShootDateId])
GO



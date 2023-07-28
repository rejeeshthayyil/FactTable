USE [Onlinestore]
GO

/****** Object:  Table [Report].[FactShootOps]    Script Date: 28/07/2023 14:09:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Report].[FactShootOps](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[OptionId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[UserId] [int] NOT NULL,
	[DateId] [int] NOT NULL,
	[EventTypeId] [int] NOT NULL,
	[OptionStatusId] [int] NOT NULL,
	[LifeCycleStatusId] [int] NOT NULL,
	[ShootTypeId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
	[SourceTypeId] [int] NOT NULL,
	[StudioId] [int] NOT NULL,
	[ShootDateId] [int] NOT NULL,
	[ShootTimeId] [int] NOT NULL,
	[GoalTypeId] [int] NOT NULL,
	[ReasonCodeId] [int] NULL,
	[SKU] [varchar](30) NULL,
	[CorrelationId] [varchar](50) NULL,
	[EventTiemStamp] [datetime] NULL,
	[ModelName] [varchar](100) NULL,
	[NumberOfEnrichmentGoals] [int] NOT NULL,
	[IsOptionGoal] [bit] NOT NULL,
	[LastUpdatedTimeStamp] [datetime] NOT NULL,
	[OptionReceivedDateTimeStamp] [datetime] NULL,
	[OptionAssignedDateTimeStamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Report].[FactShootOps]  WITH CHECK ADD FOREIGN KEY([DateId])
REFERENCES [Report].[DimDate] ([DateId])
GO

ALTER TABLE [Report].[FactShootOps]  WITH CHECK ADD FOREIGN KEY([EventTypeId])
REFERENCES [Report].[DimEventType] ([EventTypeId])
GO

ALTER TABLE [Report].[FactShootOps]  WITH CHECK ADD FOREIGN KEY([GoalTypeId])
REFERENCES [Report].[DimGoalType] ([GoalTypeId])
GO

ALTER TABLE [Report].[FactShootOps]  WITH CHECK ADD FOREIGN KEY([LocationId])
REFERENCES [Report].[DimLocation] ([LocationId])
GO

ALTER TABLE [Report].[FactShootOps]  WITH CHECK ADD FOREIGN KEY([ReasonCodeId])
REFERENCES [Report].[DimReasonCode] ([ReasonId])
GO

ALTER TABLE [Report].[FactShootOps]  WITH CHECK ADD FOREIGN KEY([ShootDateId])
REFERENCES [Report].[DimShootDate] ([ShootDateId])
GO

ALTER TABLE [Report].[FactShootOps]  WITH CHECK ADD FOREIGN KEY([ShootTimeId])
REFERENCES [Report].[DimShootTime] ([ShootTimeId])
GO

ALTER TABLE [Report].[FactShootOps]  WITH CHECK ADD FOREIGN KEY([SourceTypeId])
REFERENCES [Report].[DimSourceType] ([SourceTypeId])
GO

ALTER TABLE [Report].[FactShootOps]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [Report].[DimUser] ([UserId])
GO



USE [Onlinestore]
GO

/****** Object:  Table [Report].[FactShootOpsSnapsShotHistory]    Script Date: 28/07/2023 14:10:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Report].[FactShootOpsSnapsShotHistory](
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
	[EventTiemStamp] [datetime] NULL,
	[ModelName] [varchar](100) NULL,
	[NumberOfEnrichmentGoals] [int] NOT NULL,
	[IsOptionGoal] [bit] NOT NULL,
	[IsEnrichmentComplete] [int] NULL,
	[LastUpdatedTimeStamp] [datetime] NOT NULL,
	[LatestStatusTimeStamp] [datetime] NOT NULL,
	[TimeInOrderState] [bigint] NULL,
	[TimeInShootOpsState] [bigint] NULL,
	[TimeInAssigneState] [bigint] NULL,
	[TimeInRejectedState] [bigint] NULL,
	[OptionReceivedDateTimeStamp] [datetime] NULL,
	[OptionAssignedDateTimeStamp] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [Report].[FactShootOpsSnapsShotHistory]  WITH CHECK ADD FOREIGN KEY([DateId])
REFERENCES [Report].[DimDate] ([DateId])
GO

ALTER TABLE [Report].[FactShootOpsSnapsShotHistory]  WITH CHECK ADD FOREIGN KEY([EventTypeId])
REFERENCES [Report].[DimEventType] ([EventTypeId])
GO

ALTER TABLE [Report].[FactShootOpsSnapsShotHistory]  WITH CHECK ADD FOREIGN KEY([GoalTypeId])
REFERENCES [Report].[DimGoalType] ([GoalTypeId])
GO

ALTER TABLE [Report].[FactShootOpsSnapsShotHistory]  WITH CHECK ADD FOREIGN KEY([LocationId])
REFERENCES [Report].[DimLocation] ([LocationId])
GO

ALTER TABLE [Report].[FactShootOpsSnapsShotHistory]  WITH CHECK ADD FOREIGN KEY([ReasonCodeId])
REFERENCES [Report].[DimReasonCode] ([ReasonId])
GO

ALTER TABLE [Report].[FactShootOpsSnapsShotHistory]  WITH CHECK ADD FOREIGN KEY([ShootDateId])
REFERENCES [Report].[DimShootDate] ([ShootDateId])
GO

ALTER TABLE [Report].[FactShootOpsSnapsShotHistory]  WITH CHECK ADD FOREIGN KEY([ShootTimeId])
REFERENCES [Report].[DimShootTime] ([ShootTimeId])
GO

ALTER TABLE [Report].[FactShootOpsSnapsShotHistory]  WITH CHECK ADD FOREIGN KEY([SourceTypeId])
REFERENCES [Report].[DimSourceType] ([SourceTypeId])
GO

ALTER TABLE [Report].[FactShootOpsSnapsShotHistory]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [Report].[DimUser] ([UserId])
GO



USE [Onlinestore]
GO

/****** Object:  Table [Report].[FactRetouchSnapsShot]    Script Date: 28/07/2023 14:09:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Report].[FactRetouchSnapsShot](
	[FactRetouchSnapshotId] [int] IDENTITY(1,1) NOT NULL,
	[OptionId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[SKU] [varchar](30) NULL,
	[EventTypeId] [int] NOT NULL,
	[GoalId] [varchar](100) NULL,
	[GoalTypeId] [int] NOT NULL,
	[LifeCycleStatusId] [int] NOT NULL,
	[StudioId] [int] NOT NULL,
	[ShootTypeId] [int] NOT NULL,
	[ShootDateId] [int] NOT NULL,
	[ShootTimeId] [int] NOT NULL,
	[ModelName] [varchar](100) NULL,
	[IsOptionGoal] [bit] NOT NULL,
	[GoalApprovalStated] [int] NULL,
	[UserId] [int] NOT NULL,
	[RetouchCompletedByUser] [int] NULL,
	[RejectionReasonCodeId] [int] NOT NULL,
	[RejectionComments] [varchar](500) NULL,
	[RejectionStateId] [int] NOT NULL,
	[OverrideReasonCodeaId] [int] NOT NULL,
	[OverrideComments] [varchar](500) NULL,
	[RetouchInitiatedDateTimeStamp] [datetime] NULL,
	[ProductRetouchCompletedTimeStamp] [datetime] NULL,
	[IsActive] [int] NULL,
	[EventTiemStamp] [datetime] NULL,
	[LastUpdatedTimeStamp] [datetime] NULL,
	[CorrelationId] [varchar](50) NULL,
	[AssetStatedId] [int] NULL,
	[FromTeam] [varchar](50) NULL,
	[ToTeam] [varchar](50) NULL,
	[Team] [varchar](50) NULL,
	[GoalCompletetionStateId] [int] NOT NULL,
	[RetouchAssignedToUser] [int] NULL,
	[Level] [varchar](50) NULL,
	[IsEnrichmentComplete] [int] NULL,
	[IsRetouchCompleted] [int] NULL,
	[IsSameDayReShootCompleted] [int] NULL,
	[RetouchCompletedDateTimeStamp] [datetime] NULL,
	[IsReshoot] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FactRetouchSnapshotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Report].[FactRetouchSnapsShot]  WITH CHECK ADD FOREIGN KEY([EventTypeId])
REFERENCES [Report].[DimEventType] ([EventTypeId])
GO

ALTER TABLE [Report].[FactRetouchSnapsShot]  WITH CHECK ADD FOREIGN KEY([GoalCompletetionStateId])
REFERENCES [Report].[DimGoalCompletionstate] ([GoalCompletionstateId])
GO

ALTER TABLE [Report].[FactRetouchSnapsShot]  WITH CHECK ADD FOREIGN KEY([GoalTypeId])
REFERENCES [Report].[DimGoalType] ([GoalTypeId])
GO

ALTER TABLE [Report].[FactRetouchSnapsShot]  WITH CHECK ADD FOREIGN KEY([OverrideReasonCodeaId])
REFERENCES [Report].[DimOverrideReasonCode] ([OverrideReasonCodeId])
GO

ALTER TABLE [Report].[FactRetouchSnapsShot]  WITH CHECK ADD FOREIGN KEY([RejectionReasonCodeId])
REFERENCES [Report].[DimRejectionReasonCode] ([RejectionReasonCodeId])
GO

ALTER TABLE [Report].[FactRetouchSnapsShot]  WITH CHECK ADD FOREIGN KEY([RejectionStateId])
REFERENCES [Report].[DimRejectionState] ([RejectionStateId])
GO

ALTER TABLE [Report].[FactRetouchSnapsShot]  WITH CHECK ADD FOREIGN KEY([ShootDateId])
REFERENCES [Report].[DimShootDate] ([ShootDateId])
GO

ALTER TABLE [Report].[FactRetouchSnapsShot]  WITH CHECK ADD FOREIGN KEY([ShootTimeId])
REFERENCES [Report].[DimShootTime] ([ShootTimeId])
GO

ALTER TABLE [Report].[FactRetouchSnapsShot]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [Report].[DimUser] ([UserId])
GO



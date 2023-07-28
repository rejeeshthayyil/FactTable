USE [Onlinestore]
GO

/****** Object:  Table [Report].[FactStudios]    Script Date: 28/07/2023 14:11:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Report].[FactStudios](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[EventTypeId] [int] NOT NULL,
	[CorrelationId] [varchar](50) NULL,
	[OptionId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[SKU] [varchar](30) NULL,
	[ShootTypeId] [int] NOT NULL,
	[StudioId] [int] NOT NULL,
	[ShootDateId] [int] NOT NULL,
	[ShootTimeId] [int] NOT NULL,
	[GoalTypeId] [int] NOT NULL,
	[GoalId] [varchar](100) NULL,
	[IsOptionGoal] [bit] NOT NULL,
	[LifeCycleStatusId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ModelName] [varchar](100) NULL,
	[PauseReasonCodeId] [int] NOT NULL,
	[OverrideReasonCodeaId] [int] NOT NULL,
	[RejectionReasonCodeId] [int] NOT NULL,
	[AssetStateId] [int] NULL,
	[GoalCompletetionStateId] [int] NOT NULL,
	[GoalApprovalStated] [int] NULL,
	[ProductShootStateId] [int] NULL,
	[EventTimeStamp] [datetime] NOT NULL,
	[LastUpdatedTimeStamp] [datetime] NOT NULL,
	[RejectionStateId] [int] NOT NULL,
	[RejectionComments] [varchar](500) NULL,
	[OverrideComments] [varchar](500) NULL,
	[FromTeam] [varchar](50) NULL,
	[ToTeam] [varchar](50) NULL,
	[ShootNotes] [varchar](500) NULL,
	[PhotoGrapherCompletionStateId] [int] NULL,
	[PhotoGrapherCompletionTimeStamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Report].[FactStudios]  WITH CHECK ADD FOREIGN KEY([EventTypeId])
REFERENCES [Report].[DimEventType] ([EventTypeId])
GO

ALTER TABLE [Report].[FactStudios]  WITH CHECK ADD FOREIGN KEY([GoalCompletetionStateId])
REFERENCES [Report].[DimGoalCompletionstate] ([GoalCompletionstateId])
GO

ALTER TABLE [Report].[FactStudios]  WITH CHECK ADD FOREIGN KEY([GoalTypeId])
REFERENCES [Report].[DimGoalType] ([GoalTypeId])
GO

ALTER TABLE [Report].[FactStudios]  WITH CHECK ADD FOREIGN KEY([OverrideReasonCodeaId])
REFERENCES [Report].[DimOverrideReasonCode] ([OverrideReasonCodeId])
GO

ALTER TABLE [Report].[FactStudios]  WITH CHECK ADD FOREIGN KEY([PauseReasonCodeId])
REFERENCES [Report].[DimPausedReasonCode] ([PausedReasonCodeId])
GO

ALTER TABLE [Report].[FactStudios]  WITH CHECK ADD FOREIGN KEY([PhotoGrapherCompletionStateId])
REFERENCES [Report].[DimPhotoGrapherCompletionState] ([PhotoGrapherCompetionStateId])
GO

ALTER TABLE [Report].[FactStudios]  WITH CHECK ADD FOREIGN KEY([RejectionReasonCodeId])
REFERENCES [Report].[DimRejectionReasonCode] ([RejectionReasonCodeId])
GO

ALTER TABLE [Report].[FactStudios]  WITH CHECK ADD FOREIGN KEY([RejectionStateId])
REFERENCES [Report].[DimRejectionState] ([RejectionStateId])
GO

ALTER TABLE [Report].[FactStudios]  WITH CHECK ADD FOREIGN KEY([ShootDateId])
REFERENCES [Report].[DimShootDate] ([ShootDateId])
GO

ALTER TABLE [Report].[FactStudios]  WITH CHECK ADD FOREIGN KEY([ShootTimeId])
REFERENCES [Report].[DimShootTime] ([ShootTimeId])
GO

ALTER TABLE [Report].[FactStudios]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [Report].[DimUser] ([UserId])
GO



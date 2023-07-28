USE [Onlinestore]
GO

/****** Object:  Table [Report].[FactStudiosSnapshot]    Script Date: 28/07/2023 14:12:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Report].[FactStudiosSnapshot](
	[StudioSnapshotID] [int] NOT NULL,
	[OptionID] [bigint] NULL,
	[ProductID] [bigint] NULL,
	[SKU] [varchar](255) NULL,
	[ShootTypeId] [int] NULL,
	[StudioId] [int] NULL,
	[ShootDateId] [int] NULL,
	[ShootTimeId] [int] NULL,
	[GoalTypeId] [int] NULL,
	[GoalID] [varchar](255) NULL,
	[isoptionGoal] [bit] NULL,
	[LifecycleStatusid] [int] NULL,
	[UserId] [int] NULL,
	[ModelName] [varchar](255) NULL,
	[Ispaused] [bit] NULL,
	[Pausedid] [int] NULL,
	[PausedstratTimeStamp] [datetime] NULL,
	[ShootRenameTimeStamp] [datetime] NULL,
	[Timelost] [bigint] NULL,
	[TimeInshoot] [bigint] NULL,
	[PausedReasonCodeId] [int] NULL,
	[OverrideReasonCodeId] [int] NULL,
	[RejectionReasonCodeId] [int] NULL,
	[AssetStarId] [int] NULL,
	[GoalCompletionstateId] [int] NULL,
	[ProductShootStateId] [int] NULL,
	[ShotYN] [int] NULL,
	[VideoShotYN] [int] NULL,
	[EventTypeId] [int] NULL,
	[IsActive] [int] NULL,
	[EventTimeStamp] [datetime] NULL,
	[LastUpdatedTimeStamp] [datetime] NULL,
	[RejectionStateId] [int] NULL,
	[RejectioinComments] [varchar](255) NULL,
	[OverrideComments] [varchar](255) NULL,
	[IsEnrichmemntCompete] [int] NULL,
	[ShootNotes] [varchar](255) NULL,
	[PhotoGrapherCompetionStateId] [int] NULL,
	[PhotoGrapherCompetetionTimeStamp] [datetime] NULL,
	[GoalApprovalStateId] [int] NULL,
	[CFSTag] [varchar](255) NULL,
	[UpdatedDatetimeStamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudioSnapshotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([AssetStarId])
REFERENCES [Report].[DimAssetStar] ([AssetStarId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([AssetStarId])
REFERENCES [Report].[DimAssetStar] ([AssetStarId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([EventTypeId])
REFERENCES [Report].[DimEventType] ([EventTypeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([EventTypeId])
REFERENCES [Report].[DimEventType] ([EventTypeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([GoalCompletionstateId])
REFERENCES [Report].[DimGoalCompletionstate] ([GoalCompletionstateId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([GoalCompletionstateId])
REFERENCES [Report].[DimGoalCompletionstate] ([GoalCompletionstateId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([GoalTypeId])
REFERENCES [Report].[DimGoalType] ([GoalTypeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([GoalTypeId])
REFERENCES [Report].[DimGoalType] ([GoalTypeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([LifecycleStatusid])
REFERENCES [Report].[DimLifecycleStatus] ([LifecycleStatusid])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([LifecycleStatusid])
REFERENCES [Report].[DimLifecycleStatus] ([LifecycleStatusid])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([OptionID])
REFERENCES [Report].[DimOption] ([OptionId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([OptionID])
REFERENCES [Report].[DimOption] ([OptionId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([OverrideReasonCodeId])
REFERENCES [Report].[DimOverrideReasonCode] ([OverrideReasonCodeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([OverrideReasonCodeId])
REFERENCES [Report].[DimOverrideReasonCode] ([OverrideReasonCodeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([Pausedid])
REFERENCES [Report].[DimPaused] ([Pausedid])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([PausedReasonCodeId])
REFERENCES [Report].[DimPausedReasonCode] ([PausedReasonCodeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([Pausedid])
REFERENCES [Report].[DimPaused] ([Pausedid])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([PausedReasonCodeId])
REFERENCES [Report].[DimPausedReasonCode] ([PausedReasonCodeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([PhotoGrapherCompetionStateId])
REFERENCES [Report].[DimPhotoGrapherCompletionState] ([PhotoGrapherCompetionStateId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([PhotoGrapherCompetionStateId])
REFERENCES [Report].[DimPhotoGrapherCompletionState] ([PhotoGrapherCompetionStateId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([ProductShootStateId])
REFERENCES [Report].[DimProductShootState] ([ProductShootStateId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [Report].[DimProduct] ([ProductID])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([ProductShootStateId])
REFERENCES [Report].[DimProductShootState] ([ProductShootStateId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [Report].[DimProduct] ([ProductID])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([RejectionReasonCodeId])
REFERENCES [Report].[DimRejectionReasonCode] ([RejectionReasonCodeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([RejectionStateId])
REFERENCES [Report].[DimRejectionState] ([RejectionStateId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([RejectionReasonCodeId])
REFERENCES [Report].[DimRejectionReasonCode] ([RejectionReasonCodeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([RejectionStateId])
REFERENCES [Report].[DimRejectionState] ([RejectionStateId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([ShootTypeId])
REFERENCES [Report].[DimShootType] ([ShootTypeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([ShootDateId])
REFERENCES [Report].[DimShootDate] ([ShootDateId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([ShootTimeId])
REFERENCES [Report].[DimShootTime] ([ShootTimeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([ShootTypeId])
REFERENCES [Report].[DimShootType] ([ShootTypeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([ShootDateId])
REFERENCES [Report].[DimShootDate] ([ShootDateId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([ShootTimeId])
REFERENCES [Report].[DimShootTime] ([ShootTimeId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([StudioId])
REFERENCES [Report].[DimStudio] ([StudioId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([StudioId])
REFERENCES [Report].[DimStudio] ([StudioId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [Report].[DimUser] ([UserId])
GO

ALTER TABLE [Report].[FactStudiosSnapshot]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [Report].[DimUser] ([UserId])
GO



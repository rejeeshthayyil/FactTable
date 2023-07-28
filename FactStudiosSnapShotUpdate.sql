USE [Onlinestore]
GO

/****** Object:  Table [Report].[FactStudiosSnapShotUpdate]    Script Date: 28/07/2023 14:13:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Report].[FactStudiosSnapShotUpdate](
	[StudioSnapshotID] [int] NULL,
	[OptionID] [bigint] NULL,
	[ProductID] [bigint] NULL,
	[SKU] [varchar](1) NULL,
	[ShootTypeId] [int] NULL,
	[StudioId] [int] NULL,
	[ShootDateId] [int] NULL,
	[ShootTimeId] [int] NULL,
	[GoalTypeId] [int] NULL,
	[GoalID] [varchar](1) NULL,
	[isoptionGoal] [bit] NULL,
	[LifecycleStatusid] [int] NULL,
	[UserId] [int] NULL,
	[ModelName] [varchar](1) NULL,
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
	[RejectioinComments] [varchar](1) NULL,
	[OverrideComments] [varchar](1) NULL,
	[IsEnrichmemntCompete] [int] NULL,
	[ShootNotes] [varchar](1) NULL,
	[PhotoGrapherCompetionStateId] [int] NULL,
	[PhotoGrapherCompetetionTimeStamp] [datetime] NULL,
	[GoalApprovalStateId] [int] NULL,
	[CFSTag] [varchar](1) NULL,
	[UpdatedDatetimeStamp] [datetime] NULL
) ON [PRIMARY]
GO



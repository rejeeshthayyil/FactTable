USE [Onlinestore]
GO

/****** Object:  Table [Report].[FactShootState]    Script Date: 28/07/2023 14:11:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Report].[FactShootState](
	[FactShootStateId] [int] IDENTITY(1,1) NOT NULL,
	[correlationId] [int] NULL,
	[ShootStateId] [int] NULL,
	[EventTypeId] [int] NULL,
	[ShootTimeId] [int] NULL,
	[ShootDateId] [int] NULL,
	[StudioId] [int] NULL,
	[ShootTypeId] [int] NULL,
	[Isshootstarted] [int] NULL,
	[ShootStartedDateTime] [datetime] NULL,
	[IssuedId] [int] NULL,
	[Reason] [varchar](500) NULL,
	[Comments] [varchar](500) NULL,
	[UserId] [int] NULL,
	[IsissueResolved] [int] NULL,
	[ShootPausedDatetime] [datetime] NULL,
	[ExpectedMorningstartTime] [varchar](500) NULL,
	[ExpectedAfternoonStarttime] [varchar](500) NULL,
	[ExpectedEveningStarttime] [varchar](500) NULL,
	[EventTimeStamp] [int] NULL,
	[LastUpdatedTimeStamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FactShootStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



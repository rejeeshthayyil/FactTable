USE [Onlinestore]
GO

/****** Object:  Table [Report].[FactOps]    Script Date: 28/07/2023 14:07:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Report].[FactOps](
	[ShootDateId] [int] NOT NULL,
	[StudioId] [int] NOT NULL,
	[ShootTimeId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NULL,
	[Segment] [varchar](200) NULL,
	[IsVideo] [bit] NULL,
	[ShootDetails] [varchar](500) NULL,
	[EventTypeId] [int] NULL,
	[EventTimeStamp] [datetime] NOT NULL,
	[LastUpdatedTimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [Report].[FactOps]  WITH CHECK ADD FOREIGN KEY([EventTypeId])
REFERENCES [Report].[DimEventType] ([EventTypeId])
GO

ALTER TABLE [Report].[FactOps]  WITH CHECK ADD FOREIGN KEY([ShootDateId])
REFERENCES [Report].[DimShootDate] ([ShootDateId])
GO

ALTER TABLE [Report].[FactOps]  WITH CHECK ADD FOREIGN KEY([ShootTimeId])
REFERENCES [Report].[DimShootTime] ([ShootTimeId])
GO

ALTER TABLE [Report].[FactOps]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [Report].[DimUser] ([UserId])
GO



USE [whb]
GO

/****** Object:  Table [Teacher].[Homework]    Script Date: 2021/1/3 23:25:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Teacher].[Homework](
	[HomeworkID] [int] NOT NULL,
	[TeacherID] [nvarchar](256) NOT NULL,
	[Course] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Homework1] [nvarchar](max) NOT NULL,
	[Homework1_Weight] [float] NOT NULL,
	[Homework2] [nvarchar](max) NULL,
	[Homework2_Weight] [float] NULL,
	[Homework3] [nvarchar](max) NULL,
	[Homework3_Weight] [float] NULL,
	[Homework4] [nvarchar](max) NULL,
	[Homework4_Weight] [float] NULL,
	[Homework5] [nvarchar](max) NULL,
	[Homework5_Weight] [float] NULL,
	[DueDate] [datetime] NULL,
 CONSTRAINT [PK_Homework] PRIMARY KEY CLUSTERED 
(
	[HomeworkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


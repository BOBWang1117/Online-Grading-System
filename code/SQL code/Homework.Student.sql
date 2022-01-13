USE [whb]
GO

/****** Object:  Table [Homework].[Student]    Script Date: 2021/1/3 23:22:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Homework].[Student](
	[ID] [int] NOT NULL,
	[HomeworkID] [int] NOT NULL,
	[StudentID] [nvarchar](256) NOT NULL,
	[TeacherID] [nvarchar](256) NOT NULL,
	[Course] [nvarchar](50) NULL,
	[Title] [nvarchar](100) NULL,
	[TotalScore] [float] NULL,
	[Answer1] [nvarchar](max) NULL,
	[Answer1_Score] [float] NULL,
	[Answer1_Evaluation] [nvarchar](max) NULL,
	[Answer2] [nvarchar](max) NULL,
	[Answer2_Score] [float] NULL,
	[Answer2_Evaluation] [nvarchar](max) NULL,
	[Answer3] [nvarchar](max) NULL,
	[Answer3_Score] [float] NULL,
	[Answer3_Evaluation] [nvarchar](max) NULL,
	[Answer4] [nvarchar](max) NULL,
	[Answer4_Score] [float] NULL,
	[Answer4_Evaluation] [nvarchar](max) NULL,
	[Answer5] [nvarchar](max) NULL,
	[Answer5_Score] [float] NULL,
	[Answer5_Evaluation] [nvarchar](max) NULL,
	[Count] [int] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Student_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [Homework].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Homework] FOREIGN KEY([HomeworkID])
REFERENCES [Teacher].[Homework] ([HomeworkID])
GO

ALTER TABLE [Homework].[Student] CHECK CONSTRAINT [FK_Student_Homework]
GO


USE [whb]
GO

/****** Object:  Table [Student].[Grade]    Script Date: 2021/1/3 23:25:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Student].[Grade](
	[SchoolEntityID] [int] NOT NULL,
	[StudentID] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Grade1] [nchar](10) NULL,
	[Grade2] [nchar](10) NULL,
	[GPA] [float] NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[SchoolEntityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Student].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Student] FOREIGN KEY([SchoolEntityID])
REFERENCES [Student].[Student] ([SchoolEntityID])
GO

ALTER TABLE [Student].[Grade] CHECK CONSTRAINT [FK_Grade_Student]
GO


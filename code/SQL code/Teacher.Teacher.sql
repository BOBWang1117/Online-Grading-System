USE [whb]
GO

/****** Object:  Table [Teacher].[Teacher]    Script Date: 2021/1/3 23:26:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Teacher].[Teacher](
	[SchoolEntityID] [int] NOT NULL,
	[TeacherID] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Gender] [nchar](1) NOT NULL,
	[BirthDate] [date] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[SchoolEntityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Teacher].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Person] FOREIGN KEY([SchoolEntityID])
REFERENCES [Person].[Person] ([SchoolEntityID])
GO

ALTER TABLE [Teacher].[Teacher] CHECK CONSTRAINT [FK_Teacher_Person]
GO


USE [whb]
GO

/****** Object:  Table [Student].[Student]    Script Date: 2021/1/3 23:25:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Student].[Student](
	[SchoolEntityID] [int] NOT NULL,
	[StudentID] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Gender] [nchar](1) NOT NULL,
	[BirthDate] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[SchoolEntityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Student].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Person] FOREIGN KEY([SchoolEntityID])
REFERENCES [Person].[Person] ([SchoolEntityID])
GO

ALTER TABLE [Student].[Student] CHECK CONSTRAINT [FK_Student_Person]
GO


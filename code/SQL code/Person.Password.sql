USE [whb]
GO

/****** Object:  Table [Person].[Password]    Script Date: 2021/1/3 23:24:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Person].[Password](
	[SchoolEntityID] [int] NOT NULL,
	[LoginID] [nvarchar](256) NOT NULL,
	[Password] [varchar](10) NOT NULL,
	[PersonType] [nchar](2) NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Password] PRIMARY KEY CLUSTERED 
(
	[SchoolEntityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Person].[Password]  WITH CHECK ADD  CONSTRAINT [FK_Password_Person] FOREIGN KEY([SchoolEntityID])
REFERENCES [Person].[Person] ([SchoolEntityID])
GO

ALTER TABLE [Person].[Password] CHECK CONSTRAINT [FK_Password_Person]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Random value concatenated with the password string before the password is hashed.' , @level0type=N'SCHEMA',@level0name=N'Person', @level1type=N'TABLE',@level1name=N'Password', @level2type=N'COLUMN',@level2name=N'Password'
GO


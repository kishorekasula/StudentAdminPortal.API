create database StudentAdminPortalDb

USE [StudentAdminPortalDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01-09-2024 21:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 01-09-2024 21:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [uniqueidentifier] NOT NULL,
	[PhysicalAddress] [nvarchar](max) NULL,
	[PostalAddress] [nvarchar](max) NULL,
	[StudentId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 01-09-2024 21:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 01-09-2024 21:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Mobile] [bigint] NOT NULL,
	[ProfileImageUrl] [nvarchar](max) NULL,
	[GenderId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240821140132_initial', N'5.0.9')
GO
INSERT [dbo].[Address] ([Id], [PhysicalAddress], [PostalAddress], [StudentId]) VALUES (N'1d1136e5-0f51-4664-aa92-87f9aefe60c9', N'BANGLORE', N'MAGISTIC', N'9e240b7d-e0eb-477f-b37a-fd00ba6ef883')
GO
INSERT [dbo].[Address] ([Id], [PhysicalAddress], [PostalAddress], [StudentId]) VALUES (N'436afe72-89f1-46ee-876e-8ad9d5f675ba', N'ggggg', N'ddddd', N'a714caec-a446-42f4-bfd9-cb6631b730f5')
GO
INSERT [dbo].[Address] ([Id], [PhysicalAddress], [PostalAddress], [StudentId]) VALUES (N'dd818f97-9e24-4037-8484-a860444ce973', N'banglare', N'523716', N'd9186571-fd70-471d-896c-128e67606269')
GO
INSERT [dbo].[Gender] ([Id], [Description]) VALUES (N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7', N'M')
GO
INSERT [dbo].[Gender] ([Id], [Description]) VALUES (N'b8e0ee99-1c3e-48be-924b-4376bf26a224', N'F')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'd9186571-fd70-471d-896c-128e67606269', N'nagender', N'padakalla', CAST(N'2024-08-16T00:00:00.0000000' AS DateTime2), N'nagender1234567@gmail.com', 1234567890, N'Resources\Images\7bb5f5bb-8457-4334-9dc8-d4084393d096.png', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'1552386c-fa02-4545-9f50-269b83b4bb84', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:02.5133333' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'732c2b76-34c9-46ef-9171-3118c1150333', N'VAMSI', N'CBS', CAST(N'2024-08-21T21:30:03.2766667' AS DateTime2), N'VAMSICHSH@GMAIL.COM', 999999, N'', N'b8e0ee99-1c3e-48be-924b-4376bf26a224')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'3ed5e13a-3e73-465d-b8d4-3834277a1e4f', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:04.0233333' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'53b321b2-081e-4039-af3f-39e096d70676', N'VAMSI', N'CBS', CAST(N'2024-08-21T21:30:05.1766667' AS DateTime2), N'VAMSICHSH@GMAIL.COM', 999999, N'', N'b8e0ee99-1c3e-48be-924b-4376bf26a224')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'56a2b258-2e7e-476d-9a0a-4f5111fb4708', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:04.4000000' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'710b70a1-5adb-4ccb-a1e0-604db9e8009a', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:03.6600000' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'd97f1973-e8e1-4420-90df-66932f65eaa9', N'VAMSI', N'CBS', CAST(N'2024-08-21T21:30:01.3600000' AS DateTime2), N'VAMSICHSH@GMAIL.COM', 999999, N'', N'b8e0ee99-1c3e-48be-924b-4376bf26a224')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'3d52c88e-3659-4f85-bb30-715e97e7b4a0', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:02.0966667' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'c7dad144-de3a-4e24-8939-7e81d5359337', N'VAMSI', N'CBS', CAST(N'2024-08-21T21:30:04.4000000' AS DateTime2), N'VAMSICHSH@GMAIL.COM', 999999, N'', N'b8e0ee99-1c3e-48be-924b-4376bf26a224')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'7a4f3ac0-9487-4d7a-8160-8e2328364b95', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:01.3600000' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'7aed3bb0-8c90-4feb-9af7-8e7b6127cab0', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:02.8866667' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'873e73ea-89c8-493c-a06a-a2785ca84cb8', N'VAMSI', N'CBS', CAST(N'2024-08-21T21:30:02.5133333' AS DateTime2), N'VAMSICHSH@GMAIL.COM', 999999, N'', N'b8e0ee99-1c3e-48be-924b-4376bf26a224')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'bed19b27-789c-4dff-ae81-a60ab5e98760', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:01.7566667' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'5c750042-f553-4fcb-9910-b2dce426932f', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:00.5566667' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'e9ac8678-bc2d-4810-85db-b4af8f5764e7', N'VAMSI', N'CBS', CAST(N'2024-08-21T21:30:02.8866667' AS DateTime2), N'VAMSICHSH@GMAIL.COM', 999999, N'', N'b8e0ee99-1c3e-48be-924b-4376bf26a224')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'05ffa225-116e-4279-a91c-c907850fc9b6', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:03.2766667' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'a714caec-a446-42f4-bfd9-cb6631b730f5', N'VAMSI', N'CBS', CAST(N'2024-08-21T00:00:00.0000000' AS DateTime2), N'VAMSICHSH@GMAIL.COM', 1234567899, NULL, N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'a7584082-ea6b-46fb-9240-cd53fd893809', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:04.7900000' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'8e61c884-0573-41a7-8d02-d98215fbce90', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T21:30:05.1766667' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'6af96bc7-9574-421b-a84e-dd0d053f6514', N'VAMSI', N'CBS', CAST(N'2024-08-21T21:30:00.5600000' AS DateTime2), N'VAMSICHSH@GMAIL.COM', 999999, N'', N'b8e0ee99-1c3e-48be-924b-4376bf26a224')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'0548d3e5-4939-430c-a12c-e207b67aec5b', N'VAMSI', N'CBS', CAST(N'2024-08-21T21:30:03.6633333' AS DateTime2), N'VAMSICHSH@GMAIL.COM', 999999, N'', N'b8e0ee99-1c3e-48be-924b-4376bf26a224')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'4367a212-a2c0-4284-b353-f805ef2e95b0', N'VAMSI', N'CBS', CAST(N'2024-08-21T21:30:02.0966667' AS DateTime2), N'VAMSICHSH@GMAIL.COM', 999999, N'', N'b8e0ee99-1c3e-48be-924b-4376bf26a224')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'9e240b7d-e0eb-477f-b37a-fd00ba6ef883', N'SRIKANTH', N'CHSH', CAST(N'2024-08-21T19:59:19.1200000' AS DateTime2), N'SRIKANTHCHSH@GMAIL.COM', 7981347470, N'', N'3746a26e-294c-4ee6-82b7-0ab6e877f6f7')
GO
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DateOfBirth], [Email], [Mobile], [ProfileImageUrl], [GenderId]) VALUES (N'ef2495e9-4939-4316-8625-fd8ff98a9f9f', N'VAMSI', N'CBS', CAST(N'2024-08-21T21:30:04.7900000' AS DateTime2), N'VAMSICHSH@GMAIL.COM', 999999, N'', N'b8e0ee99-1c3e-48be-924b-4376bf26a224')
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Student_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Student_StudentId]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Gender_GenderId] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Gender_GenderId]
GO

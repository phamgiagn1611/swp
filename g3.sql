USE [FLM_G3_Demo]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[userName] [varchar](150) NOT NULL,
	[password] [varchar](150) NULL,
	[phone] [varchar](20) NULL,
	[address] [nvarchar](200) NULL,
	[gender] [int] NULL,
	[gmail] [varchar](150) NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[roleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[assessmentId] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](150) NULL,
	[type] [varchar](150) NULL,
	[part] [int] NULL,
	[weight] [varchar](50) NULL,
	[completionCriteria] [varchar](50) NULL,
	[duration] [varchar](255) NULL,
	[questionType] [varchar](255) NULL,
	[noQuestion] [varchar](255) NULL,
	[knowledgeSkill] [varchar](255) NULL,
	[gradingGuide] [varchar](255) NULL,
	[note] [nvarchar](max) NULL,
	[subjectCode] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[assessmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[comboId] [int] IDENTITY(1,1) NOT NULL,
	[comboNameVn] [nvarchar](255) NULL,
	[comboNameEn] [varchar](255) NULL,
	[note] [nvarchar](max) NULL,
	[tag] [varchar](50) NULL,
	[curriculumId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[comboId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo_Subject]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo_Subject](
	[comboId] [int] NOT NULL,
	[subjectCode] [varchar](50) NOT NULL,
	[semester] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[comboId] ASC,
	[subjectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curriculum]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curriculum](
	[curriculumId] [int] IDENTITY(1,1) NOT NULL,
	[curriculumCode] [varchar](50) NULL,
	[nameVn] [nvarchar](255) NULL,
	[nameEn] [varchar](255) NULL,
	[decription] [nvarchar](max) NULL,
	[decisionNo] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[curriculumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curriculum_Subject]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curriculum_Subject](
	[curriculumId] [int] NOT NULL,
	[subjectCode] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[curriculumId] ASC,
	[subjectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Decision]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Decision](
	[decisionNo] [varchar](150) NOT NULL,
	[decisionName] [nvarchar](150) NULL,
	[approvedDate] [date] NULL,
	[note] [nvarchar](max) NULL,
	[createDate] [date] NULL,
	[fileName] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[decisionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Elective]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elective](
	[electiveId] [int] IDENTITY(1,1) NOT NULL,
	[electiveNameVn] [nvarchar](255) NULL,
	[electiveNameEn] [varchar](255) NULL,
	[note] [nvarchar](max) NULL,
	[tag] [varchar](50) NULL,
	[curriculumId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[electiveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Elective_Subject]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elective_Subject](
	[electiveId] [int] NOT NULL,
	[subjectCode] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[electiveId] ASC,
	[subjectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedbackId] [int] IDENTITY(1,1) NOT NULL,
	[category] [nvarchar](max) NULL,
	[content] [nvarchar](max) NULL,
	[createDate] [date] NULL,
	[isSeen] [bit] NULL,
	[userName] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[feedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LO]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LO](
	[loId] [int] IDENTITY(1,1) NOT NULL,
	[cloName] [varchar](50) NULL,
	[cloDetails] [varchar](max) NULL,
	[loDetails] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[loId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[materialId] [int] IDENTITY(1,1) NOT NULL,
	[materialDescription] [nvarchar](max) NULL,
	[author] [nvarchar](255) NULL,
	[publisher] [nvarchar](255) NULL,
	[publishedDate] [date] NULL,
	[edition] [nvarchar](255) NULL,
	[ISBN] [nvarchar](150) NULL,
	[isMainMaterial] [bit] NULL,
	[isHardCopy] [bit] NULL,
	[isOnline] [bit] NULL,
	[note] [nvarchar](max) NULL,
	[subjectCode] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[materialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLO]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLO](
	[ploId] [int] IDENTITY(1,1) NOT NULL,
	[ploName] [varchar](50) NULL,
	[ploDecription] [varchar](max) NULL,
	[curriculumId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ploId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PO]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO](
	[poId] [int] NOT NULL,
	[poName] [varchar](50) NULL,
	[poDecription] [varchar](max) NULL,
	[curriculumId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[poId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[questionId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[detail] [nvarchar](max) NULL,
	[sessionId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[questionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [varchar](150) NULL,
	[note] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sessionId] [int] IDENTITY(1,1) NOT NULL,
	[sessionNo] [varchar](50) NULL,
	[topic] [varchar](255) NULL,
	[learningTeachingType] [varchar](50) NULL,
	[itu] [varchar](50) NULL,
	[studentMaterials] [nvarchar](255) NULL,
	[sDownload] [nvarchar](255) NULL,
	[studentTasks] [nvarchar](255) NULL,
	[urls] [varchar](255) NULL,
	[subjectCode] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[sessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subjectCode] [varchar](50) NOT NULL,
	[subjectNameVn] [nvarchar](255) NULL,
	[subjectNameEn] [varchar](255) NULL,
	[semester] [varchar](25) NULL,
	[noCredit] [int] NULL,
	[preRequisite] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[subjectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Syllabus]    Script Date: 2/2/2023 1:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Syllabus](
	[subjectCode] [varchar](50) NOT NULL,
	[syllabusId] [int] IDENTITY(1,1) NOT NULL,
	[syllabusNameVn] [nvarchar](255) NULL,
	[syllabusNameEn] [varchar](255) NULL,
	[degreeLevel] [nvarchar](50) NULL,
	[timeAllocation] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[studentTask] [nvarchar](max) NULL,
	[tool] [nvarchar](255) NULL,
	[isApproved] [bit] NULL,
	[note] [nvarchar](max) NULL,
	[minAvgMarkToPass] [int] NULL,
	[isActive] [bit] NULL,
	[approvedDate] [date] NULL,
	[decisionNo] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[subjectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (1, N'Introductory documents aout FPT Group and FPT University', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'OTP101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (2, N'Hồi ký: Những điều đọng lại qua hai cuộc chiến tranh', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'OTP101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (3, N'Hồi ký: Tổng hành dinh', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'OTP101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (4, N'Computer Organization and Architecture: Design for Performance', N'William Stallings', N'Prentice Hall', CAST(N'2012-01-01' AS Date), N'9th (or 10th)', N'978-0132936330 (9th), 978-0134101613 (10th)', 1, 1, 0, N'', N'CEA201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (5, N'Computer architecture : A quantitative approach', N'John L. Hennessy, David A Patterson', N'Morgan Kaufmann', CAST(N'1900-01-01' AS Date), N'', N'', 0, 1, 0, N'', N'CEA201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (6, N'http://williamstallings.com/ComputerOrganization/COA9e-Instructor/', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'CEA201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (7, N'http://williamstallings.com/ComputerOrganization/COA9e-student/', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'CEA201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (8, N'PowerPoint Lecture Slides', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'CEA201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (9, N'Instructor Solutions Manual', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'CEA201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (10, N'Instructor Project Manual', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'CEA201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (11, N'Test banks', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'CEA201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (12, N'Foundations Of Computer Science', N'Behrouz Forouzan', N'Cengage', CAST(N'2017-01-01' AS Date), N'4th', N'978-1-4737-5104-0', 1, 1, 0, N'', N'CSI104')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (13, N'Fundamentals of Information Systems Security', N'', N'Jones & Bartlett', CAST(N'2016-01-01' AS Date), N'3rd', N'', 0, 1, 0, N'', N'CSI104')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (14, N'Computer architecture : A quantitative approach', N'John L. Hennessy, David A Patterson', N'Morgan Kaufmann', CAST(N'2011-01-01' AS Date), N'5th', N'', 0, 1, 0, N'', N'CSI104')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (15, N'Calculus 1', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'https://openstax.org/details/books/calculus-volume-1', N'MAE101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (16, N'Calculus 2', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'https://openstax.org/details/books/calculus-volume-2', N'MAE101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (17, N'powerpoint in CD + Powerpoint prepared by previous lecturers (PP).', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'MAE101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (18, N'Student Video Skillbuilder in CD (Video).', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'MAE101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (19, N'Animation in CD (Animation).', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'MAE101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (20, N'Computerized tools (for example Maxima http://maxima.sourceforge.net/) (CT)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'MAE101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (21, N'Essential Calculus', N'James Stewart', N'Thomson Brooks/Cole', CAST(N'1900-01-01' AS Date), N'', N'978-0-495-10860-3', 0, 0, 0, N'', N'MAE101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (22, N'Calculus for engineers', N'Donald Trim', N'Prentice Hall,', CAST(N'1900-01-01' AS Date), N'', N'0-13-085603-7', 0, 0, 0, N'', N'MAE101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (23, N'Calculus', N'Stanley I. Grossman', N'', CAST(N'1900-01-01' AS Date), N'', N'0-03-096420-2', 0, 0, 0, N'', N'MAE101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (24, N'Linear Algebra with applications', N'W.Keith Nicholson,', N'Mc Graw Hill Education', CAST(N'1900-01-01' AS Date), N'', N'987-1-259-07299-4.', 0, 1, 0, N'', N'MAE101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (25, N'Linear Algebra with Applications', N'W. Keith Nicholson', N'Lyryx Online Resources', CAST(N'2021-01-01' AS Date), N'2021-A', N'', 1, 0, 1, N'https://lyryx.com/linear-algebra-applications/', N'MAE101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (26, N'Foundations of Programming Using C', N'Evan Weaver', N'2003', CAST(N'1900-01-01' AS Date), N'', N'', 1, 1, 0, N'', N'PRF192')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (27, N'BTP100: http://cs.senecac.on.ca/~btp100/pages/welco.html', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'PRF192')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (28, N'FU Presentation Powerpoints (.zip)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'PRF192')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (29, N'FU CMS at http://cms.fpt.edu.vn .', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'PRF192')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (30, N'https://www.coursera.org/specializations/academic-skills', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'SPEC: Academic Skills for University Success Specialization', N'SSL101c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (31, N'https://www.coursera.org/learn/digital-literacy', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 01: Introduction to Information & Digital Literacy for University Success', N'SSL101c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (32, N'https://www.coursera.org/learn/problem-solving-skills', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 02: Introduction to Problem-Solving Skill for University Success', N'SSL101c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (33, N'https://www.coursera.org/learn/critical-thinking-skills', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 03: Critical Thinking Skills for University Success', N'SSL101c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (34, N'https://www.coursera.org/learn/communication-skills', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 04: Communication Skills for University Success', N'SSL101c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (35, N'https://www.coursera.org/learn/academic-skills-project', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 05: Academic Skills for University Success: Capstone', N'SSL101c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (36, N'Discrete Mathematics and its applications', N'Kenneth Rosen', N'Mc.Graw Hill, IE', CAST(N'2007-01-01' AS Date), N'Ed.7 (or 6)', N'978-0073383095', 1, 1, 0, N'', N'MAD101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (37, N'Teaching Suggestion and Applications of Discrete Mathematics for ST1 (TS)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'MAD101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (38, N'Testbank for ST1', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'MAD101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (39, N'Powerpoint image in CD + Powerpoint prepared by previous lecturers (PP)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'MAD101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (40, N'Computerized tools (for example C programming tools, Maxima http://maxima.sourceforge.net/) (CT)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'MAD101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (41, N'Adam Drozdek. Data structure and Algorithms in Java. 3rd Edition.', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 1, 0, N'', N'MAD101')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (42, N'https://www.coursera.org/specializations/computer-communications', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'SPEC: Computer Communications Specialization', N'NWC203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (43, N'https://learner.coursera.help/hc/en-us/articles/208280036-Coursera-Code-of-Conduct', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'Help Articles', N'NWC203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (44, N'https://www.coursera.org/learn/fundamentals-network-communications?specialization=computer-communications', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 1: Fundamentals of Network Communication', N'NWC203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (45, N'https://www.coursera.org/learn/peer-to-peer-protocols-local-area-networks?specialization=computer-communications', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 2: Peer-to-Peer Protocols and Local Area Networks', N'NWC203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (46, N'https://www.coursera.org/learn/packet-switching-networks-algorithms?specialization=computer-communications', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 3: Packet Switching Networks and Algorithms', N'NWC203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (47, N'https://www.coursera.org/learn/tcp-ip-advanced?specialization=computer-communications', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 4: TCP/IP and Advanced Topics', N'NWC203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (48, N'Modern Operating Systems (4th edition or 3rd or 2nd)', N'Andrew S. Tanenbaum', N'Pearson', CAST(N'2014-01-01' AS Date), N'4th or 3rd or 2nd', N'9781292061429 or 9780133591620 (4th Edition)', 1, 1, 0, N'', N'OSG202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (49, N'Course slides (.pptx)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'OSG202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (50, N'Understanding operating systems', N'Ann McIver McHoes and Ida M. Flynn', N'Cengage Learning', CAST(N'2008-01-01' AS Date), N'8th', N'978-1305674257', 0, 1, 0, N'', N'OSG202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (51, N'http://courses.knox.edu/cs226/', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'OSG202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (52, N'Connecting with Computer Science', N'Creg Anderson, David Ferrro, Robert Hilbon', N'Thomson course Technology', CAST(N'2010-01-01' AS Date), N'2nd Edition', N'978-1439080351', 0, 1, 0, N'', N'OSG202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (53, N'Java 8 Specification https://docs.oracle.com/javase/specs/jvms/se8/html/jvms-1.html#jvms-1.1', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'PRO192')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (54, N'Core Java, Volum 1: Fundamentals', N'Cay Horstmann', N'Pearson', CAST(N'2018-01-01' AS Date), N'11th', N'978-0135166307', 0, 1, 0, N'', N'PRO192')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (55, N'Core Java, Volum 2: Advanced features', N'Cay Horstmann', N'Pearson', CAST(N'2019-01-01' AS Date), N'11th', N'978-0135166314', 0, 1, 0, N'', N'PRO192')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (56, N'Object-Oriented Programming using Java (website (offline): Học liệu do FU biên soạn)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'', N'PRO192')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (57, N'Problem Solving in Teams and Groups', N'Cameron W. Piercy', N'University of Kansas Libraries', CAST(N'2019-01-01' AS Date), N'', N'', 1, 0, 1, N'https://open.umn.edu/opentextbooks/textbooks/problem-solving-in-teams-and-groups', N'SSG104')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (58, N'College Success', N'N/A', N'Lumen Learning courseware', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'https://courses.lumenlearning.com/lumencollegesuccessxtraining2/ or https://courses.lumenlearning.com/lumencollegesuccessxtraining/', N'SSG104')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (59, N'Business communication for success', N'N/A', N'University of Minnesota i', CAST(N'2015-01-01' AS Date), N'2th', N'', 1, 0, 1, N'https://www.oercommons.org/courses/basics-of-written-business-communication/view', N'SSG104')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (60, N'Working in group 7th ed.', N'', N'Pearson', CAST(N'2017-01-01' AS Date), N'', N'', 0, 1, 0, N'', N'SSG104')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (61, N'Business communication 7th ed.', N'', N'Thomson-South Western', CAST(N'2008-01-01' AS Date), N'', N'', 0, 1, 0, N'', N'SSG104')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (62, N'PowerPoint Slides', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'SSG104')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (63, N'Michaelt T. Goodrich, Roberto Tamassia, Michael H. Goldwasser: Data Structures and Algorithms in Java, 6th Edition, 2014 (ebook) Link to the book: http://coltech.vnu.edu.vn/~sonpb/DSA/Data%20Structures%20and%20Algorithms%20in%20Java,%206th%20Edition,%202014.pdf', N'Michaelt T. Goodrich, Roberto Tamassia, Michael H. Goldwasser', N'Wiley', CAST(N'2014-01-01' AS Date), N'6th', N'978-1-118-77133-4', 1, 0, 1, N'', N'CSD201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (64, N'FU slides (ppt)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'CSD201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (65, N'FU exercises (pdf)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'CSD201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (66, N'Code files for students (java files)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'CSD201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (67, N'FU CMS at http://cms.fpt.edu.vn.', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'CSD201')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (68, N'First Course in Database Systems', N'Jeffrey D. Ullman, Jennifer Widom', N'Pearson', CAST(N'2008-01-01' AS Date), N'Third edition', N'9781292025827 or 9780136006374', 1, 1, 0, N'', N'DBI202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (69, N'Database Management System', N'Raghu ramakrishnan', N'Mc Graw-Hill', CAST(N'1900-01-01' AS Date), N'Third edition', N'978-8131769591', 0, 1, 0, N'', N'DBI202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (70, N'Database Management System (DBMS): A Practical Approach', N'Rajiv Chopra', N'SChand Publications', CAST(N'1900-01-01' AS Date), N'', N'9788121932455', 0, 1, 0, N'', N'DBI202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (71, N'Course slides (.pptx)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'DBI202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (72, N'Labs & assignment', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'DBI202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (73, N'Dekiru Nihongo - Beginner Main textbook', N'できる日本語教材開発プロジェクト', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 1, 0, N'Giáo trình Dekiru quyển đỏ nhà trường đã có bản quyền', N'JPD113')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (74, N'Dekiru Nihongo - Beginner Grammar Workbook Vocabulary Workbook', N'できる日本語教材開発プロジェクト', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'JPD113')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (75, N'Kana Nyuumon (Nhập môn Kana)', N'Japan Foundation', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'JPD113')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (76, N'Kanji Tamago', N'できる日本語教材開発プロジェクト', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 1, 0, N'', N'JPD113')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (77, N'Slide bài giảng do giảng viên cung cấp', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'JPD113')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (78, N'Lab Room Regulations (For Students)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'Bản mềm do FU biên soạn', N'LAB211')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (79, N'Mentor guide For Lab (For Mentors only)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'Bản mềm do FU biên soạn', N'LAB211')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (80, N'Evaluation Templates (For Mentors only)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'Bản mềm do FU biên soạn', N'LAB211')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (81, N'https://learner.coursera.help/hc/en-us/articles/208280036-Coursera-Code-of-Conduct', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'WED201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (82, N'https://www.coursera.org/learn/html/home/welcome', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 1: Introduction to HTML5', N'WED201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (83, N'https://www.coursera.org/learn/introcss/home/welcome', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 2: Introduction to CSS3', N'WED201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (84, N'https://www.coursera.org/learn/javascript/home/welcome', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 3: Interactivity with JavaScript', N'WED201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (85, N'https://www.coursera.org/learn/responsivedesign/home/welcome', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 4: Advanced Styling with Responsive Design', N'WED201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (86, N'https://www.coursera.org/learn/web-design-project/home/welcome', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 5: Web Design for Everybody Capstone', N'WED201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (87, N'https://www.coursera.org/specializations/web-design; University of Michigan', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'SPEC: Web Design for Everybody: Basics of Web Development & Coding', N'WED201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (88, N'Course from Edx: https://learning.edx.org/course/course-v1:CurtinX+IOT1x+2T2018/home', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'', N'IOT102')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (89, N'Course from Edx: https://learning.edx.org/course/course-v1:CurtinX+IOT2x+2T2018/home', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'', N'IOT102')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (90, N'Free Hardware and IoT Ebooks_ OReilly Media', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'IOT102')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (91, N'Introduction to Arduino A piece of cake! by Alan G. Smith September 30, 2011 free at: http://www.introtoarduino.com', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'IOT102')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (92, N'Documents at https://www.arduino.cc/', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'IOT102')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (93, N'Instructables.com - 20 Unbelievable Arduino Projects', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'IOT102')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (94, N'Slides', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'', N'IOT102')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (95, N'Tutorials', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'', N'IOT102')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (96, N'Video', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'', N'IOT102')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (97, N'Electronics component list', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'', N'IOT102')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (98, N'『できる日本語　初級　本冊』', N'嶋田和子', N'アルク', CAST(N'2011-01-01' AS Date), N'', N'ISBN-10 : 4757419775ISBN-13 : 978-4757419773', 0, 1, 0, N'Giáo trình Dekiru quyển đỏ nhà trường đã có bản quyền', N'JPD123')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (99, N'『わたしの文法ノート 初級 (できる日本語)』', N'嶋田和子', N'凡人社', CAST(N'2011-01-01' AS Date), N'', N'ISBN-10 : 489358801XISBN-13 : 978-4893588012', 0, 1, 0, N'', N'JPD123')
GO
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (100, N'『わたしのことばノート 初級 (できる日本語)』', N'嶋田 和子', N'凡人社', CAST(N'2012-01-01' AS Date), N'', N'ISBN-10 : 4893588117ISBN-13 : 978-4893588111', 0, 1, 0, N'', N'JPD123')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (101, N'漢字たまご 初級', N'有山優樹 (著), 落合知春 (著), 立原雅子 (著), 林英子 (著), 山口知才子 (著), 酒井弘美 (イラスト), 嶋田和子 (監修)', N'凡人社', CAST(N'2012-01-01' AS Date), N'', N'ISBN-10 : 4893588311ISBN-13 : 978-4893588319', 0, 1, 0, N'', N'JPD123')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (102, N'Slide bài giảng do giảng viên cung cấp', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'JPD123')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (103, N'Main materials: 1) Montgomery D.C. & Runger G.C., Applied Statistics and Probability for Engineers', N'John Wiley & Sons.', N'Wiley', CAST(N'2006-01-01' AS Date), N'4th (or 5th or 6th) ed.,', N'9781119718871', 1, 1, 0, N'', N'MAS291')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (104, N'Powerpoint slides (PP).', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'MAS291')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (105, N'Computerized tools (for example Excel and DDXL add-ons) (CT)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'MAS291')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (106, N'Elementary Statistics Using Excel, 3/E,', N'Mario F. Triola', N'Addison-Wesley', CAST(N'2002-01-01' AS Date), N'3rd', N'321365135', 0, 1, 0, N'', N'MAS291')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (107, N'Text book 1: Professional Java® forWebApplications Link: http://library.books24x7.com/toc.aspx?bookid=62587', N'Nicholas S. Williams', N'Wrox', CAST(N'1900-01-01' AS Date), N'1st edition', N'978-1118656464', 1, 0, 1, N'', N'PRJ301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (108, N'Article 1: http://docs.oracle.com/javase/tutorial/JDBC', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'PRJ301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (109, N'Article 2: https://docs.oracle.com/cd/B14099_19/web.1012/b14017/filters.htm', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'PRJ301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (110, N'https://learner.coursera.help/hc/en-us/articles/208280036-Coursera-Code-of-Conduct', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'SWE201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (111, N'https://www.coursera.org/learn/software-processes', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 01: Software Development Processes and Methodologies', N'SWE201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (112, N'https://www.coursera.org/learn/agile-software-development', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 02: Agile Software Development', N'SWE201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (113, N'https://www.coursera.org/learn/lean-software-development', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 03: Lean Software Development', N'SWE201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (114, N'https://www.coursera.org/learn/engineering-practices-secure-software-quality', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 04: Engineering Practices for Building Quality Software', N'SWE201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (115, N'https://www.coursera.org/specializations/software-development-lifecycle', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'SPEC: Software Development Lifecycle', N'SWE201c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (116, N'https://learner.coursera.help/hc/en-us/articles/208280036-Coursera-Code-of-Conduct', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'ITE302c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (117, N'https://www.coursera.org/learn/promote-ethical-data-driven-technologies', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 1: Promote the Ethical Use of Data-Driven Technologies', N'ITE302c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (118, N'https://www.coursera.org/learn/ethical-frameworks-action', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 2: Turn Ethical Frameworks into Actionable Steps', N'ITE302c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (119, N'https://www.coursera.org/learn/detect-mitigate-ethical-risks', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 3: Detect and Mitigate Ethical Risks', N'ITE302c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (120, N'https://www.coursera.org/learn/ethical-communication-data-driven-technologies', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 4: Communicate Effectively about Ethical Challenges in Data-Driven Technologies', N'ITE302c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (121, N'https://www.coursera.org/learn/ethical-data-driven-technology-leader', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 5: Create and Lead an Ethical Data-Driven Organization', N'ITE302c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (122, N'https://www.coursera.org/learn/preparing-for-your-certnexus-certification-exam', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 6: Preparing for Your CertNexus Certification Exam', N'ITE302c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (123, N'https://www.coursera.org/specializations/certified-ethical-emerging-technologist', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'SPEC: CertNexus Certified Ethical Emerging Technologist Professional Certificate', N'ITE302c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (124, N'Guides & Templates (for Students & Teachers)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'Bản mềm do FU biên soạn', N'SWP391')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (125, N'Learn HTML and CSS with W3Schools (https://www.w3schools.com/)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'SWP391')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (126, N'Murach''s Java Servlets and JSP', N'Joel Murach, Michael Urban', N'Mike Murach & Associates', CAST(N'2014-01-01' AS Date), N'3rd Edition', N'978-1890774783', 0, 1, 0, N'', N'SWP391')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (127, N'SQL for MySQL Developers A Comprehensive Tutorial and Reference', N'Rick F. van der Lans', N'Addison-Wesley Professional', CAST(N'2007-01-01' AS Date), N'1st edition', N'978-0131497351', 0, 1, 0, N'', N'SWP391')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (128, N'Software Requirements', N'Karl E. Wiegers', N'Microsoft Press', CAST(N'1900-01-01' AS Date), N'Third Edition', N'978-0-7356-7966-5', 1, 1, 0, N'', N'SWR302')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (129, N'More About Software Requirements: Thorny Issues and Practical Advice', N'Karl E. Wiegers', N'Microsoft Press', CAST(N'1900-01-01' AS Date), N'', N'978-0-7356-2267-8', 0, 1, 0, N'', N'SWR302')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (130, N'The Software Requirements Memory Jogger: A Pocket Guide to Help Software And Business Teams Develop and Manage Requirements', N'Ellen Gottesdiener', N'GOAL/QPC', CAST(N'1900-01-01' AS Date), N'', N'978-1-57681-060-6', 0, 1, 0, N'', N'SWR302')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (131, N'Requirements Engineering: Secure Software Specifications Specialization', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'https://www.coursera.org/specializations/requirements-engineering-secure-software', N'SWR302')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (132, N'Foundations of Software Testing: ISTQB Certification', N'Dorothy Graham, Erik van Veenendaal, Isabel Evans,Rex Black', N'Cengage Learning Business Press', CAST(N'2008-01-01' AS Date), N'', N'978-1-84480-355-2', 1, 0, 1, N'Books24x7, https://library.books24x7.com/toc.aspx?bookid=26179', N'SWT301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (133, N'https://cmshn.fpt.edu.vn/', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'SWT301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (134, N'Foundations of software testing istqb certification', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'SWT301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (135, N'Software Quality Engineering: Testing, Quality assurance, and Quantifiable Improvement. Jeff Tian', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'SWT301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (136, N'Course Software Testing and Quality Assurance by Tian in http://engr.smu.edu/~tian/class/7314.06f/syl.html (availble in FU library)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'SWT301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (137, N'Ian Sommerville. Software Engineering 8e. Part 5: Verification and Validation.', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'SWT301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (138, N'Towards Zero Defect Software: The Cleanroom Approach. Mario A. Nascimento, Mario A. Nascimento, Murat M. Tanik, Murat M. Tanik. 1994. Available at http://www.cnptia.embrapa.br/~mario/Papers/tr-94-cse-31.ps.gz', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'SWT301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (139, N'Computer Software Validation. Alan Muirhead. News & Views, March 2000. Available at http://www.stcpmc.org/archive/archive/n&v/feat0300.html', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'SWT301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (140, N'Agile Testing: A Practical Guide for Testers and Agile Teams', N'Lisa Crispin,Janet Gregory', N'', CAST(N'1900-01-01' AS Date), N'', N'978-0321534460', 0, 1, 0, N'', N'SWT301')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (141, N'https://www.coursera.org/specializations/academic-english', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'SPEC: Academic English: Writing Specialization', N'ENW492c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (142, N'https://www.coursera.org/learn/grammar-punctuation', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 01: Grammar and Punctuation', N'ENW492c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (143, N'https://www.coursera.org/learn/getting-started-with-essay-writing', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 02: Getting Started with Essay Writing', N'ENW492c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (144, N'https://www.coursera.org/learn/advanced-writing', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 03: Advanced Writing', N'ENW492c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (145, N'https://www.coursera.org/learn/introduction-to-research-for-essay-writing', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 04: Introduction to Research for Essay Writing', N'ENW492c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (146, N'https://www.coursera.org/learn/academic-writing-capstone', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 1, 1, N'MOOC 05: Project: Writing a Research Paper', N'ENW492c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (147, N'Hướng dẫn quản lý thực tập (07.04PL - HDCV Quan ly thuc tap) Guideline for internship management (07.04PL - HDCV Quan ly thuc tap)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 1, 0, N'Internal material, self-documented FPTU', N'OJT202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (148, N'Phiếu khảo sát doanh nghiệp về sinh viên thực tập (07.16BMĐHFE10- Khảo sát doanh nghiệp về sinh viên thực tập) Business survey on student interns', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 1, 0, N'Internal material, self-documented FPTU', N'OJT202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (149, N'Phiếu Khảo sát sinh viên về kỳ thực tập (07.17BMĐHFE10- Khao sat sinh vien ve ky thuc tap) Student survey on the internship', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 1, 0, N'Internal material, self-documented FPTU', N'OJT202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (150, N'Phiếu đánh giá sinh viên kỳ OJT Evaluation of the students'' OJT performance', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 1, 0, N'Internal material, self-documented FPTU', N'OJT202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (151, N'Google Android developer reference site (http://developer.android.com/resources/tutorials/hello-world.html)', N'Google', N'Google', CAST(N'1900-01-01' AS Date), N'N/A', N'', 1, 0, 1, N'', N'PRM392')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (152, N'https://google-developer-training.github.io/android-developer-fundamentals-course-concepts-v2/', N'Google', N'Google', CAST(N'2018-01-01' AS Date), N'2nd', N'', 0, 0, 1, N'', N'PRM392')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (153, N'Course slides (.pptx)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 0, N'Bản mềm, tài liệu xây dựng bởi FU', N'PRM392')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (154, N'Software Modeling and Design: UML, Use Cases, Patterns, and Software Architectures', N'H. Gomaa', N'Cambridge University Press', CAST(N'2011-01-01' AS Date), N'1st Edition', N'9780521764148', 1, 1, 0, N'Books24x7, https://library.books24x7.com/toc.aspx?bookid=41618', N'SWD392')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (155, N'UML Distilled: Applying the Standard Object Modeling Language', N'Fowler', N'Addison-Wesley', CAST(N'2004-01-01' AS Date), N'3rd edition', N'978-0321193681', 0, 1, 0, N'', N'SWD392')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (156, N'https://gmu.blackboard.com/webct/', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'SWD392')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (157, N'Giáo trình Triết học Mác-Lênin, dùng cho sinh viên đại học hệ không chuyên lý luận chính trị Philosophy of Marxism – Leninism textbook for non-politics majored students', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc gia sự thậtTruth National Political Publishing House', CAST(N'2021-01-01' AS Date), N'1', N'', 1, 0, 1, N'', N'MLN111')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (158, N'Giáo trình Triết học Mác-Lênin, dùng cho sinh viên đại học hệ chuyên lý luận chính trị Philosophy of Marxism – Leninism textbook for politics majored students', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc gia sự thậtTruth National Political Publishing House', CAST(N'2021-01-01' AS Date), N'1', N'', 0, 1, 0, N'', N'MLN111')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (159, N'Giáo trình Triết học Mác-Lênin Philosophy of Marxism – Leninism textbook', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc giaNational Political Publishing House', CAST(N'2010-01-01' AS Date), N'', N'', 0, 1, 0, N'', N'MLN111')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (160, N'C. Mác và Ph. Ăngghen: Toàn tập Marx/Engels Collected Works', N'C. Mác và Ph. Ăngghen', N'Nhà xuất bản Chính trị quốc giaNational Political Publishing House', CAST(N'1995-01-01' AS Date), N'1', N'', 0, 1, 0, N'', N'MLN111')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (161, N'V.I. Lênnin: Toàn tập Selected works [of] V. I. Lenin', N'V.I. Lênnin', N'Nhà xuất bản Chính trị quốc giaNational Political Publishing House', CAST(N'2005-01-01' AS Date), N'1', N'', 0, 1, 0, N'', N'MLN111')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (162, N'Giáo trình Triết học Mác-Lênin Philosophy of Marxism – Leninism textbook', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc giaNational Political Publishing House', CAST(N'1999-01-01' AS Date), N'', N'', 0, 1, 0, N'', N'MLN111')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (163, N'Giáo trình Kinh tế chính trị Mác-Lênin, dùng cho sinh viên đại học hệ không chuyên lý luận chính trị Political economics of Marxism – Leninism textbook for non-politics majored students', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc gia sự thậtTruth National Political Publishing House', CAST(N'2021-01-01' AS Date), N'1', N'', 0, 0, 0, N'Giáo trình có thể download bản mềm tại:(Textbook can be downloaded at)https://moet.gov.vn/van-ban/vbdh/Pages/chi-tiet-van-ban.aspx?ItemID=2729#divShowDialogDownload. Thư viện chỉ đặt mua số lượng ít.', N'MLN122')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (164, N'Giáo trình Kinh tế chính trị Mác - Leenin, dùng cho sinh viên đại học hệ chuyên lý luận chính trị Political economics of Marxism – Leninism textbook for politics majored students', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc gia sự thậtTruth National Political Publishing House', CAST(N'2021-01-01' AS Date), N'1', N'', 0, 0, 0, N'', N'MLN122')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (165, N'Văn kiện Đại hội Đảng toàn quốc lần thứ VI, VII, VIII, IX, X, XI, XII, XIII Political report of the 6th, 7th, 8th, 9th, 10th, 11th, 12th, 13th Party Congress The Communist Party of Vietnam The Communist Party of Vietnam', N'Đảng Cộng sản Việt Nam', N'Nhà xuất bản Chính trị quốc gia National Political Publishing House', CAST(N'1900-01-01' AS Date), N'1', N'', 0, 0, 0, N'', N'MLN122')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (166, N'C. Mác và Ph. Ăngghen: Toàn tập, t4,8,12,13, 18 ,20, 23, 25, 46 Marx/Engels Collected Works, Vol. 4, 8, 12,13, 18 ,20, 23, 25, 46', N'C. Mác và Ph. Ăngghen', N'Nhà xuất bản Chính trị quốc giaNational Political Publishing House', CAST(N'2002-01-01' AS Date), N'1', N'', 0, 0, 0, N'', N'MLN122')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (167, N'V.I. Lênnin: Toàn tập, t3, 27, 45 V. I. Lenin, Collected Works, Vol. 3, 27, 45', N'V.I. Lênnin', N'Nhà xuất bản Chính trị quốc giaNational Political Publishing House', CAST(N'2005-01-01' AS Date), N'', N'', 0, 0, 0, N'', N'MLN122')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (168, N'https://learner.coursera.help/hc/en-us/articles/208280036-Coursera-Code-of-Conduct', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'PMG202c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (169, N'https://www.coursera.org/learn/project-management-foundations', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 1: Foundations of Project Management', N'PMG202c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (170, N'https://www.coursera.org/learn/project-initiation-google', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 2: Project Initiation: Starting a Successful Project', N'PMG202c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (171, N'https://www.coursera.org/learn/project-planning-google', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 3: Project Planning: Putting It All Together', N'PMG202c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (172, N'https://www.coursera.org/learn/project-execution-google', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 4: Project Execution: Running the Project', N'PMG202c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (173, N'https://www.coursera.org/learn/agile-project-management', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 5: Agile Project Management', N'PMG202c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (174, N'https://www.coursera.org/learn/applying-project-management', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 6: Capstone: Applying Project Management in the Real World', N'PMG202c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (175, N'https://www.coursera.org/professional-certificates/google-project-management', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'SPEC: Google Project Management: Professional Certificate', N'PMG202c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (176, N'The Project Management Body of Knowledge (PMBOK Guide)', N'', N'', CAST(N'1900-01-01' AS Date), N'5th', N'', 0, 0, 0, N'PMI', N'PMG202c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (177, N'ITPM: Information Technology Project Management', N'Kathy Schwalbe', N'Cengage Learning', CAST(N'1900-01-01' AS Date), N'8th', N'', 0, 0, 0, N'', N'PMG202c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (178, N'The Scrum Guide (https://scrum.org)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'PMG202c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (179, N'https://learner.coursera.help/hc/en-us/articles/208280036-Coursera-Code-of-Conduct', N'', N'Coursera', CAST(N'1900-01-01' AS Date), N'', N'', 0, 0, 1, N'', N'WDU203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (180, N'https://www.coursera.org/learn/introtoux-principles-and-processes', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 1: Introduction to User Experience Principles and Processes', N'WDU203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (181, N'https://www.coursera.org/learn/understanding-user-needs', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 2: Understanding User Needs', N'WDU203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (182, N'https://www.coursera.org/learn/evaluating-designs-with-users', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 3: Evaluating Designs with Users', N'WDU203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (183, N'https://www.coursera.org/learn/ux-design-concept-wireframe', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 4: UX Design: From Concept to Prototype', N'WDU203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (184, N'https://www.coursera.org/learn/ux-research-at-scale', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 5: UX Research at Scale: Surveys, Analytics, Online Testing', N'WDU203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (185, N'https://www.coursera.org/learn/user-experience-capstone', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'MOOC 6: UX (User Experience) Capstone', N'WDU203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (186, N'https://www.coursera.org/specializations/michiganux', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 1, N'SPEC: User Experience Research and Design', N'WDU203c')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (187, N'Giáo trình Tư tưởng Hồ Chí Minh, dùng cho sinh viên bậc đại học hệ không chuyên ngành lý luận chính trị<br>Ho Chi Minh ideology textbook for non-politics majored students', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc gia sự thậtTruth National Political Publishing House', CAST(N'2021-01-01' AS Date), N'1', N'', 1, 0, 1, N'Giáo trình có thể download bản mềm tại:(Textbook can be downloaded at)https://moet.gov.vn/van-ban/vbdh/Pages/chi-tiet-van-ban.aspx?ItemID=2729#divShowDialogDownload. Thư viện chỉ đặt mua bản cứng số lượng ít.', N'HCM202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (188, N'Giáo trình Tư tưởng Hồ Chí Minh, dùng cho sinh viên bậc đại học hệ chuyên ngành lý luận chính trị<br>Ho Chi Minh ideology textbook for politics majored students', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc gia sự thậtTruth National Political Publishing House', CAST(N'2021-01-01' AS Date), N'1', N'', 0, 1, 0, N'', N'HCM202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (189, N'Hồ Chí Minh toàn tập<br>The Selected Works of Ho Chi Minh<br> Ho Chi Minh', N'Hồ Chí Minh', N'Nhà xuất bản Chính trị quốc gia', CAST(N'2021-01-01' AS Date), N'1', N'', 0, 0, 1, N'', N'HCM202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (190, N'Hồ Chí Minh a life', N'William J. Duiker', N'Nhà xuất bản Hyperion, New York Hyperion Publishing, New York', CAST(N'2000-01-01' AS Date), N'1', N'', 0, 0, 1, N'', N'HCM202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (191, N'Giáo trình Chủ nghĩa xã hội khoa học, dùng cho sinh viên đại học hệ không chuyên lý luận chính trị<br>Scientific socialism textbook for non-politics majored students', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc gia sự thậtTruth National Political Publishing House', CAST(N'2021-01-01' AS Date), N'1', N'', 1, 0, 1, N'', N'MLN131')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (192, N'Giáo trình Chủ nghĩa xã hội khoa học, dùng cho sinh viên đại học hệ chuyên lý luận chính trị<br>Scientific socialism textbook for politics majored students', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc gia sự thậtTruth National Political Publishing House', CAST(N'2021-01-01' AS Date), N'1', N'', 0, 1, 0, N'', N'MLN131')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (193, N'Giáo trình Chủ nghĩa xã hội khoa học<br>Scientific socialism textbook', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Vietnam Education Publishing House', CAST(N'2006-01-01' AS Date), N'', N'', 0, 1, 0, N'', N'MLN131')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (194, N'C. Mác và Ph. Ăngghen: Toàn tập<br>Marx/Engels Collected Works', N'C. Mác và Ph. Ăngghen', N'Nhà xuất bản Chính trị quốc giaNational Political Publishing House', CAST(N'2004-01-01' AS Date), N'1', N'', 0, 1, 0, N'', N'MLN131')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (195, N'V.I. Lênnin: Toàn tập<br>Selected works [of] V. I. Lenin', N'V.I. Lênnin', N'Nhà xuất bản Chính trị quốc giaNational Political Publishing House', CAST(N'2005-01-01' AS Date), N'1', N'', 0, 1, 0, N'', N'MLN131')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (196, N'The Student’s Guide of Capstone Project (CPro_StudentGuide_IS_2021Fall)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'Bản mềm, tài liệu xây dựng bởi FU', N'SEP490')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (197, N'Graduated Regulation (Quy che tot nghiep)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'Bản mềm, tài liệu xây dựng bởi FU', N'SEP490')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (198, N'Project Templates (on CMS)', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 1, 0, 0, N'Bản mềm, tài liệu xây dựng bởi FU', N'SEP490')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (199, N'Giáo trình Lịch sử Đảng Cộng sản Việt Nam (Dành cho sinh viên đại học, cao đẳng khối không chuyên ngành Mác – Lênin, tư tưởng Hồ Chí Minh)<br>History of CPV textbook for students whose major is not Marxism-Leninism and Ho Chi Minh ideology', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc gia sự thậtTruth National Political Publishing House', CAST(N'2021-01-01' AS Date), N'1', N'', 1, 0, 1, N'Giáo trình có thể download bản mềm tại:(Textbook can be downloaded at)https://moet.gov.vn/van-ban/vbdh/Pages/chi-tiet-van-ban.aspx?ItemID=2729#divShowDialogDownload. Thư viện chỉ đặt mua bản cứng số lượng ít.', N'VNR202')
GO
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (200, N'Giáo trình Lịch sử Đảng Cộng sản Việt Nam (Dành cho sinh viên đại học, cao đẳng chuyên ngành Mác – Lênin, tư tưởng Hồ Chí Minh)<br>History of CPV textbook for students whose major is Marxism-Leninism and Ho Chi Minh ideology', N'Bộ Giáo dục và Đào tạoMinistry of Education and Training', N'Nhà xuất bản Chính trị quốc gia sự thậtTruth National Political Publishing House', CAST(N'2021-01-01' AS Date), N'1', N'', 0, 1, 0, N'', N'VNR202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (201, N'Hồ Chí Minh toàn tập, tập 1 đến tập 15<br>The Selected Works of Ho Chi Minh, Vol. 1 to 5', N'Hồ Chí Minh', N'Nhà xuất bản Chính trị quốc gia National Political Publishing House', CAST(N'2011-01-01' AS Date), N'1', N'', 0, 0, 1, N'', N'VNR202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (202, N'Lịch sử Đảng Cộng sản Việt Nam, tập 1<br>History of the Communist Party of Vietnam, Vol. 1', N'Institute of History', N'Nhà xuất bản Chính trị quốc gia National Political Publishing House', CAST(N'2018-01-01' AS Date), N'1', N'', 0, 0, 1, N'', N'VNR202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (203, N'Chiến tranh cách mạng Việt Nam 1945-1975, thắng lợi và bài học<br>Vietnamese Revolutionary War, 1945–1975: Victory and Lessons', N'Ban chỉ đạo tổng kết chiến tranh trực thuộc Bộ chính trị', N'Nhà xuất bản Chính trị quốc gia National Political Publishing House', CAST(N'2008-01-01' AS Date), N'1', N'', 0, 0, 1, N'', N'VNR202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (204, N'Báo cáo tổng kết một số vấn đề lý luận thực tiễn qua 30 năm đổi mới<br>The final report on the summary of some theoretical-practical issues over the past 30 years of innovation', N'Đảng Cộng sản Việt Nam, Ban chấp hành Trung ương, Ban chỉ đạo tổng kết', N'Nhà xuất bản Chính trị quốc gia National Political Publishing House', CAST(N'2015-01-01' AS Date), N'1', N'', 0, 0, 1, N'', N'VNR202')
INSERT [dbo].[Material] ([materialId], [materialDescription], [author], [publisher], [publishedDate], [edition], [ISBN], [isMainMaterial], [isHardCopy], [isOnline], [note], [subjectCode]) VALUES (205, N'Văn kiện Đại hội đại biểu toàn quốc lần thứ XII<br>Political report of the 13th Party Congress', N'Đảng Cộng sản Việt Nam', N'Nhà xuất bản Chính trị quốc gia National Political Publishing House', CAST(N'2016-01-01' AS Date), N'1', N'', 0, 0, 1, N'', N'VNR202')
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'CEA201', N'Tổ chức và Kiến trúc máy tính', N'Computer Organization and Architecture', N'1', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'CSD201', N'Cấu trúc dữ liệu và giải thuật', N'Data Structures and Algorithms', N'3', 3, N'PRO192')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'CSI104', N'Nhập môn khoa học máy tính', N'Introduction to Computer', N'1', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'DBI202', N'Các hệ cơ sở dữ liệu', N'Introduction to Databases', N'3', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'ENW492c', N'Kỹ năng viết học thuật', N'Academic Writing Skills', N'6', 3, N'None')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'EXE_ELE', N'Nhóm học phần Khởi nghiệp 1', N'Entrepreneurship Group 1', N'7', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'HCM202', N'Tư tưởng Hồ Chí Minh', N'HCM Ideology', N'9', 2, N'MLN111, MLN122')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'IOT102', N'Internet vạn vật', N'Internet of Things', N'4', 3, N'Familiarity with C programming')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'ITE302c', N'Đạo đức trong CNTT', N'Ethics in IT', N'5', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'JPD113', N'Tiếng Nhật sơ cấp 1-A1.1', N'Elementary Japanese 1- A1.1', N'3', 3, N'Không')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'JPD123', N'Tiếng Nhật sơ cấp 1-A1.2', N'Elementary Japanese 1-A1.2', N'4', 3, N'JPD113')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'LAB211', N'Thực hành OOP với Java', N'OOP with Java Lab', N'3', 3, N'PRO192')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'MAD101', N'Toán rời rạc', N'Discrete mathematics', N'2', 3, N'None')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'MAE101', N'Toán cho ngành kỹ thuật', N'Mathematics for Engineering', N'1', 3, N'None')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'MAS291', N'Xác suất thống kê', N'Statistics & Probability', N'4', 3, N'MAE101 or MAC101')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'MLN111', N'Triết học Mác - Lê-nin', N'Philosophy of Marxism – Leninism', N'8', 3, N'None')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'MLN122', N'Kinh tế chính trị Mác - Lê-nin', N'Political economics of Marxism – Leninism', N'8', 2, N'None')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'MLN131', N'Chủ nghĩa xã hội khoa học', N'Scientific socialism', N'9', 2, N'MLN111, MLN122')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'NWC203c', N'Mạng máy tính', N'Computer Networking', N'2', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'OJT202', N'Đào tạo trong môi trường thực tế', N'On-The-Job Training', N'6', 10, N'Students attain 90% of the total credits from term 1-term 5 (excluding Physical Education and OTP Programs)')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'OSG202', N'Hệ điều hành', N'Operating Systems', N'2', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'OTP101', N'Định hướng và Rèn luyện tập trung', N'Orientation and General Training Program', N'0', 0, N'None')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'PEN', N'Tiếng Anh chuẩn bị', N'Preparation English', N'0', 0, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'PHE_COM*1', N'Giáo dục thể chất 1', N'Physical Education 1', N'0', 2, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'PHE_COM*2', N'Giáo dục thể chất 2', N'Physical Education 2', N'1', 2, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'PHE_COM*3', N'Giáo dục thể chất 3', N'Physical Education 3', N'2', 2, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'PMG202c', N'Quản trị dự án', N'Project management', N'8', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'PRF192', N'Cơ sở lập trình', N'Programming Fundamentals', N'1', 3, N'None')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'PRJ301', N'Phát triển ứng dụng Java web', N'Java Web Application Development', N'4', 3, N'DBI202, PRO192')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'PRM392', N'Lập trình di động', N'Mobile Programming', N'7', 3, N'PRO192')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'PRO192', N'Lập trình hướng đối tượng', N'Object-Oriented Programming', N'2', 3, N'PRF192')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SE_COM*1', N'Học phần 1 của combo*', N'Subject 1 of Combo*', N'5', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SE_COM*2', N'Học phần 2 của combo*', N'Subject 2 of Combo*', N'7', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SE_COM*3', N'Học phần 3 của combo*', N'Subject 3 of Combo*', N'7', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SE_EXE_ELE', N'Nhóm môn Khởi nghiệp 2 và Combos', N'SE_Entrepreneurship 2 and Combos', N'8', 6, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SEP490', N'Đồ án tốt nghiệp KTPM', N'SE Capstone Project', N'9', 10, N'o Successfully complete (*) below topics: - Project Management – PMG201c or PMG202c - Software Architecture and Design – SWD391 or SWD392 o Pass 60% of total credits of selected combo. o Pass OJT202 (not apply to international students) o Pass 80% of total credits (PHE_COM* and OJT excluded) (*): FR must be greater than or equal to 4.')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SSG104', N'Kỹ năng giao tiếp và cộng tác', N'Communication and In-Group Working Skills', N'2', 3, N'None')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SSL101c', N'Kỹ năng học tập đại học', N'Academic Skills for University Success', N'1', 3, N'None')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SWD392', N'Kiến trúc và thiết kế phần mềm', N'Software Architecture and Design', N'7', 3, N'SWE201c, PRO192')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SWE201c', N'Nhập môn kĩ thuật phần mềm', N'Introduction to Software Engineering', N'4', 3, N'PRO192 (not applied for the BIT_AI17 programs)')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SWP391', N'Dự án phát triển phần mềm', N'Application development project', N'5', 3, N'PRJ301 (Java Web Application Development)')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SWR302', N'Yêu cầu phần mềm', N'Software Requirement', N'5', 3, N'SWE102 or SWE201c')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'SWT301', N'Kiểm thử phần mềm', N'Software Testing', N'5', 3, N'SWE102 or SWE201c')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'TMI_ELE', N'Nhạc cụ truyền thống', N'Traditional musical instrument', N'0', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'VNR202', N'Lịch sử Đảng Cộng sản Việt Nam', N'History of CPV', N'9', 2, N'MLN111, MLN122')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'WDU203c', N'Thiết kế trải nghiệm người dùng', N'UI/UX Design', N'8', 3, N'')
INSERT [dbo].[Subject] ([subjectCode], [subjectNameVn], [subjectNameEn], [semester], [noCredit], [preRequisite]) VALUES (N'WED201c', N'Thiết kế web', N'Web Design', N'3', 3, N'None')
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [fk_Account_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([roleId])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [fk_Account_Role]
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [fk_Assessment_Subject] FOREIGN KEY([subjectCode])
REFERENCES [dbo].[Subject] ([subjectCode])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [fk_Assessment_Subject]
GO
ALTER TABLE [dbo].[Combo]  WITH CHECK ADD  CONSTRAINT [fk_Combo_Curriculum] FOREIGN KEY([curriculumId])
REFERENCES [dbo].[Curriculum] ([curriculumId])
GO
ALTER TABLE [dbo].[Combo] CHECK CONSTRAINT [fk_Combo_Curriculum]
GO
ALTER TABLE [dbo].[Combo_Subject]  WITH CHECK ADD  CONSTRAINT [fk_Combo_Subject_Combo] FOREIGN KEY([comboId])
REFERENCES [dbo].[Combo] ([comboId])
GO
ALTER TABLE [dbo].[Combo_Subject] CHECK CONSTRAINT [fk_Combo_Subject_Combo]
GO
ALTER TABLE [dbo].[Combo_Subject]  WITH CHECK ADD  CONSTRAINT [fk_Combo_Subject_Subject] FOREIGN KEY([subjectCode])
REFERENCES [dbo].[Subject] ([subjectCode])
GO
ALTER TABLE [dbo].[Combo_Subject] CHECK CONSTRAINT [fk_Combo_Subject_Subject]
GO
ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [fk_Currculum_Decision] FOREIGN KEY([decisionNo])
REFERENCES [dbo].[Decision] ([decisionNo])
GO
ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [fk_Currculum_Decision]
GO
ALTER TABLE [dbo].[Curriculum_Subject]  WITH CHECK ADD  CONSTRAINT [fk_Curriculum_Subject_Curriculum] FOREIGN KEY([curriculumId])
REFERENCES [dbo].[Curriculum] ([curriculumId])
GO
ALTER TABLE [dbo].[Curriculum_Subject] CHECK CONSTRAINT [fk_Curriculum_Subject_Curriculum]
GO
ALTER TABLE [dbo].[Curriculum_Subject]  WITH CHECK ADD  CONSTRAINT [fk_Curriculum_Subject_Subject] FOREIGN KEY([subjectCode])
REFERENCES [dbo].[Subject] ([subjectCode])
GO
ALTER TABLE [dbo].[Curriculum_Subject] CHECK CONSTRAINT [fk_Curriculum_Subject_Subject]
GO
ALTER TABLE [dbo].[Elective]  WITH CHECK ADD  CONSTRAINT [fk_Elective_Curriculum] FOREIGN KEY([curriculumId])
REFERENCES [dbo].[Curriculum] ([curriculumId])
GO
ALTER TABLE [dbo].[Elective] CHECK CONSTRAINT [fk_Elective_Curriculum]
GO
ALTER TABLE [dbo].[Elective_Subject]  WITH CHECK ADD  CONSTRAINT [fk_Elective_Subject_Elecitve] FOREIGN KEY([electiveId])
REFERENCES [dbo].[Elective] ([electiveId])
GO
ALTER TABLE [dbo].[Elective_Subject] CHECK CONSTRAINT [fk_Elective_Subject_Elecitve]
GO
ALTER TABLE [dbo].[Elective_Subject]  WITH CHECK ADD  CONSTRAINT [fk_Elective_Subject_Subject] FOREIGN KEY([subjectCode])
REFERENCES [dbo].[Subject] ([subjectCode])
GO
ALTER TABLE [dbo].[Elective_Subject] CHECK CONSTRAINT [fk_Elective_Subject_Subject]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [fk_Feedback_Account] FOREIGN KEY([userName])
REFERENCES [dbo].[Account] ([userName])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [fk_Feedback_Account]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [fk_Material_Subject] FOREIGN KEY([subjectCode])
REFERENCES [dbo].[Subject] ([subjectCode])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [fk_Material_Subject]
GO
ALTER TABLE [dbo].[PLO]  WITH CHECK ADD  CONSTRAINT [fk_PLO_Curriculum] FOREIGN KEY([curriculumId])
REFERENCES [dbo].[Curriculum] ([curriculumId])
GO
ALTER TABLE [dbo].[PLO] CHECK CONSTRAINT [fk_PLO_Curriculum]
GO
ALTER TABLE [dbo].[PO]  WITH CHECK ADD  CONSTRAINT [fk_PO_Curriculum] FOREIGN KEY([curriculumId])
REFERENCES [dbo].[Curriculum] ([curriculumId])
GO
ALTER TABLE [dbo].[PO] CHECK CONSTRAINT [fk_PO_Curriculum]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [fk_Question_Session] FOREIGN KEY([sessionId])
REFERENCES [dbo].[Session] ([sessionId])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [fk_Question_Session]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [fk_Session_Subject] FOREIGN KEY([subjectCode])
REFERENCES [dbo].[Subject] ([subjectCode])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [fk_Session_Subject]
GO
ALTER TABLE [dbo].[Syllabus]  WITH CHECK ADD  CONSTRAINT [fk_Syllabus_Decision] FOREIGN KEY([decisionNo])
REFERENCES [dbo].[Decision] ([decisionNo])
GO
ALTER TABLE [dbo].[Syllabus] CHECK CONSTRAINT [fk_Syllabus_Decision]
GO
ALTER TABLE [dbo].[Syllabus]  WITH CHECK ADD  CONSTRAINT [fk_Syllabus_Subject] FOREIGN KEY([subjectCode])
REFERENCES [dbo].[Subject] ([subjectCode])
GO
ALTER TABLE [dbo].[Syllabus] CHECK CONSTRAINT [fk_Syllabus_Subject]
GO

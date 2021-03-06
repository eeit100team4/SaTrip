USE [Traveler]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 2018/5/28 上午 11:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comId] [int] NULL,
	[point] [decimal](8, 2) NULL,
	[quantity] [int] NULL,
	[clidate] [datetime] NULL,
	[memId] [varchar](255) NULL,
	[transport] [varchar](255) NULL,
	[clientaddr] [varchar](255) NULL,
	[clientname] [varchar](255) NULL,
	[clienttel] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([id], [comId], [point], [quantity], [clidate], [memId], [transport], [clientaddr], [clientname], [clienttel]) VALUES (3, 18, CAST(3000.00 AS Decimal(8, 2)), 3, CAST(N'2018-05-28T10:48:23.990' AS DateTime), N'A123456789', N'黑貓宅急便', N'霍格華茲魔法與巫術學院', N'傑克大神', N'0919883619')
INSERT [dbo].[Client] ([id], [comId], [point], [quantity], [clidate], [memId], [transport], [clientaddr], [clientname], [clienttel]) VALUES (4, 19, CAST(4000.00 AS Decimal(8, 2)), 4, CAST(N'2018-05-28T10:49:21.373' AS DateTime), N'A123456789', N'郵局', N'魔法部', N'陳學銘', N'0986618990')
INSERT [dbo].[Client] ([id], [comId], [point], [quantity], [clidate], [memId], [transport], [clientaddr], [clientname], [clienttel]) VALUES (5, 23, CAST(42000.00 AS Decimal(8, 2)), 1, CAST(N'2018-05-28T10:51:15.533' AS DateTime), N'A123456789', N'郵局', N'紫禁城太和殿', N'柳詠晴', N'0985574453')
INSERT [dbo].[Client] ([id], [comId], [point], [quantity], [clidate], [memId], [transport], [clientaddr], [clientname], [clienttel]) VALUES (6, 35, CAST(20000.00 AS Decimal(8, 2)), 2, CAST(N'2018-05-28T10:52:07.487' AS DateTime), N'A123456789', N'郵局', N'美國職棒大聯盟', N'潘傑克', N'0985577885')
INSERT [dbo].[Client] ([id], [comId], [point], [quantity], [clidate], [memId], [transport], [clientaddr], [clientname], [clienttel]) VALUES (7, 26, CAST(33000.00 AS Decimal(8, 2)), 1, CAST(N'2018-05-28T10:54:56.707' AS DateTime), N'A123456789', N'黑貓宅急便', N'香榭麗舍大道', N'王阿弘', N'0985589998')
INSERT [dbo].[Client] ([id], [comId], [point], [quantity], [clidate], [memId], [transport], [clientaddr], [clientname], [clienttel]) VALUES (8, 21, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(N'2018-05-28T10:55:31.763' AS DateTime), N'A123456789', N'郵局', N'永和豆漿大王', N'蔡阿孟', N'0919885669')
INSERT [dbo].[Client] ([id], [comId], [point], [quantity], [clidate], [memId], [transport], [clientaddr], [clientname], [clienttel]) VALUES (9, 3, CAST(36000.00 AS Decimal(8, 2)), 1, CAST(N'2018-05-28T11:01:40.983' AS DateTime), N'A123456789', N'郵局', N'日本出雲大社', N'夏目貴志', N'09078010476')
INSERT [dbo].[Client] ([id], [comId], [point], [quantity], [clidate], [memId], [transport], [clientaddr], [clientname], [clienttel]) VALUES (10, 20, CAST(15000.00 AS Decimal(8, 2)), 3, CAST(N'2018-05-28T11:03:20.203' AS DateTime), N'A123456789', N'郵局', N'天宮紫宸殿', N'夜華', N'09088630705')
SET IDENTITY_INSERT [dbo].[Client] OFF
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK1iy6lwp790asb8falbr9syodx] FOREIGN KEY([comId])
REFERENCES [dbo].[Commodity] ([Commodityid])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK1iy6lwp790asb8falbr9syodx]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FKmikoep2xgg2af1nnub8qlwbpn] FOREIGN KEY([memId])
REFERENCES [dbo].[member] ([memberId])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FKmikoep2xgg2af1nnub8qlwbpn]
GO

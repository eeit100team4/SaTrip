ALTER TABLE [dbo].[ThemeProducts] DROP CONSTRAINT [FK__ThemeProd__title__37B03374]
GO
ALTER TABLE [dbo].[ThemeJourneys] DROP CONSTRAINT [FK__ThemeJour__produ__3A8CA01F]
GO
ALTER TABLE [dbo].[ThemeApplications] DROP CONSTRAINT [FK__ThemeAppl__journ__3D690CCA]
GO
/****** Object:  Table [dbo].[ThemeTitles]    Script Date: 2018/5/31 下午 01:58:20 ******/
DROP TABLE [dbo].[ThemeTitles]
GO
/****** Object:  Table [dbo].[ThemeProducts]    Script Date: 2018/5/31 下午 01:58:20 ******/
DROP TABLE [dbo].[ThemeProducts]
GO
/****** Object:  Table [dbo].[ThemeJourneys]    Script Date: 2018/5/31 下午 01:58:20 ******/
DROP TABLE [dbo].[ThemeJourneys]
GO
/****** Object:  Table [dbo].[ThemeApplications]    Script Date: 2018/5/31 下午 01:58:20 ******/
DROP TABLE [dbo].[ThemeApplications]
GO
/****** Object:  Table [dbo].[ThemeApplications]    Script Date: 2018/5/31 下午 01:58:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeApplications](
	[applicationId] [int] IDENTITY(10001,1) NOT NULL,
	[journeyId] [int] NULL,
	[name] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[cellPhone] [varchar](50) NULL,
	[people] [int] NULL,
	[callTime] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[extra] [varchar](max) NULL,
	[terminate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[applicationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThemeJourneys]    Script Date: 2018/5/31 下午 01:58:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeJourneys](
	[journeyId] [int] IDENTITY(3001,1) NOT NULL,
	[productId] [int] NULL,
	[setOut] [date] NULL,
	[returnDay] [date] NULL,
	[deadline] [date] NULL,
	[createDate] [date] NULL,
	[price] [varchar](50) NULL,
	[companyName] [varchar](50) NULL,
	[goPlaneId] [varchar](50) NULL,
	[returnPlaneId] [varchar](50) NULL,
	[goStartDate] [date] NULL,
	[goStartHour] [varchar](50) NULL,
	[goStartMinute] [varchar](50) NULL,
	[goEndDate] [date] NULL,
	[goEndHour] [varchar](50) NULL,
	[goEndMinute] [varchar](50) NULL,
	[goStartWhere] [varchar](50) NULL,
	[goEndWhere] [varchar](50) NULL,
	[returnStartDate] [date] NULL,
	[returnStartHour] [varchar](50) NULL,
	[returnStartMinute] [varchar](50) NULL,
	[returnEndDate] [date] NULL,
	[returnEndHour] [varchar](50) NULL,
	[returnEndMinute] [varchar](50) NULL,
	[returnStartWhere] [varchar](50) NULL,
	[returnEndWhere] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[journeyId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThemeProducts]    Script Date: 2018/5/31 下午 01:58:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeProducts](
	[productId] [int] IDENTITY(201,1) NOT NULL,
	[titleId] [int] NULL,
	[productName] [varchar](max) NULL,
	[country] [varchar](50) NULL,
	[hotelName] [varchar](50) NULL,
	[adImage] [image] NULL,
	[adImageName] [varchar](50) NULL,
	[adTitle] [varchar](50) NULL,
	[adDes] [varchar](max) NULL,
	[ad1] [varchar](max) NULL,
	[ad2] [varchar](max) NULL,
	[ad3] [varchar](max) NULL,
	[title1] [varchar](max) NULL,
	[image1] [image] NULL,
	[fileName1] [varchar](50) NULL,
	[descriTitle1] [varchar](max) NULL,
	[description1] [varchar](max) NULL,
	[breakfast1] [varchar](50) NULL,
	[lunch1] [varchar](50) NULL,
	[dinner1] [varchar](50) NULL,
	[title2] [varchar](max) NULL,
	[image2] [image] NULL,
	[fileName2] [varchar](50) NULL,
	[descriTitle2] [varchar](max) NULL,
	[description2] [varchar](max) NULL,
	[breakfast2] [varchar](50) NULL,
	[lunch2] [varchar](50) NULL,
	[dinner2] [varchar](50) NULL,
	[title3] [varchar](max) NULL,
	[image3] [image] NULL,
	[fileName3] [varchar](50) NULL,
	[descriTitle3] [varchar](max) NULL,
	[description3] [varchar](max) NULL,
	[breakfast3] [varchar](50) NULL,
	[lunch3] [varchar](50) NULL,
	[dinner3] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThemeTitles]    Script Date: 2018/5/31 下午 01:58:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeTitles](
	[titleId] [int] IDENTITY(101,1) NOT NULL,
	[titleName] [varchar](50) NULL,
	[fileName] [varchar](50) NULL,
	[titleImage] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[titleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThemeApplications] ON 

INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10001, 3001, N'邱斌傑', N'先生', N'0933012989', 2, N'晚上', N'台北', N'六日整天皆可接電話~~', CAST(N'2018-05-10' AS Date))
INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10002, 3003, N'王琦琦', N'小姐', N'0932338941', 8, N'晚上', N'台中', N'人數很多請速聯絡', CAST(N'2018-05-11' AS Date))
INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10003, 3002, N'黃阿賢', N'先生', N'0927456812', 1, N'早上', N'高雄', N'晚上上班勿擾', CAST(N'2018-05-12' AS Date))
INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10004, 3004, N'林宜靜', N'小姐', N'0911477282', 15, N'下午', N'台北', N'戴門有限公司公關部負責人。', CAST(N'2018-05-14' AS Date))
INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10005, 3005, N'張勝民', N'先生', N'0978877254', 1, N'晚上', N'台北', N'請速聯絡', CAST(N'2018-05-11' AS Date))
INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10006, 3006, N'林旭幫', N'先生', N'0965691125', 1, N'晚上', N'台中', N'另一支手機:0965111448', CAST(N'2018-05-28' AS Date))
INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10007, 3001, N'趙顯一', N'先生', N'0966253489', 3, N'早上', N'台北', N'無', CAST(N'2018-05-29' AS Date))
INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10008, 3002, N'林阿福', N'先生', N'0966143489', 5, N'早上', N'台北', N'期待!', CAST(N'2018-05-26' AS Date))
INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10009, 3003, N'李小珍', N'小姐', N'0988566529', 1, N'晚上', N'台中', N'請速聯絡', CAST(N'2018-05-27' AS Date))
INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10010, 3003, N'李依華', N'小姐', N'0974566239', 1, N'晚上', N'台北', N'無', CAST(N'2018-05-24' AS Date))
INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10011, 3001, N'成捷克', N'先生', N'0933211903', 1, N'早上', N'台中', N'想確認更多細節', CAST(N'2018-05-16' AS Date))
INSERT [dbo].[ThemeApplications] ([applicationId], [journeyId], [name], [gender], [cellPhone], [people], [callTime], [location], [extra], [terminate]) VALUES (10012, 3006, N'潘瑋懸', N'小姐', N'0928461777', 3, N'晚上', N'台北', N'家裡電話:0227513654', CAST(N'2018-05-10' AS Date))
SET IDENTITY_INSERT [dbo].[ThemeApplications] OFF
SET IDENTITY_INSERT [dbo].[ThemeJourneys] ON 

INSERT [dbo].[ThemeJourneys] ([journeyId], [productId], [setOut], [returnDay], [deadline], [createDate], [price], [companyName], [goPlaneId], [returnPlaneId], [goStartDate], [goStartHour], [goStartMinute], [goEndDate], [goEndHour], [goEndMinute], [goStartWhere], [goEndWhere], [returnStartDate], [returnStartHour], [returnStartMinute], [returnEndDate], [returnEndHour], [returnEndMinute], [returnStartWhere], [returnEndWhere]) VALUES (3001, 201, CAST(N'2018-06-25' AS Date), CAST(N'2018-06-27' AS Date), CAST(N'2018-06-20' AS Date), CAST(N'2018-03-25' AS Date), N'28,800', N'國泰航空', N'CX564', N'CX565', CAST(N'2018-06-25' AS Date), N'11', N'00', CAST(N'2018-06-25' AS Date), N'14', N'50', N'桃園TPE', N'大阪關西KIX', CAST(N'2018-06-27' AS Date), N'16', N'20', CAST(N'2018-06-27' AS Date), N'18', N'20', N'大阪關西KIX', N'桃園TPE')
INSERT [dbo].[ThemeJourneys] ([journeyId], [productId], [setOut], [returnDay], [deadline], [createDate], [price], [companyName], [goPlaneId], [returnPlaneId], [goStartDate], [goStartHour], [goStartMinute], [goEndDate], [goEndHour], [goEndMinute], [goStartWhere], [goEndWhere], [returnStartDate], [returnStartHour], [returnStartMinute], [returnEndDate], [returnEndHour], [returnEndMinute], [returnStartWhere], [returnEndWhere]) VALUES (3002, 202, CAST(N'2018-07-01' AS Date), CAST(N'2018-07-03' AS Date), CAST(N'2018-06-26' AS Date), CAST(N'2018-04-01' AS Date), N'34,800', N'長榮航空', N'BR106', N'BR107', CAST(N'2018-07-01' AS Date), N'11', N'00', CAST(N'2018-07-01' AS Date), N'14', N'50', N'桃園TPE', N'東京成田NRT', CAST(N'2018-07-03' AS Date), N'16', N'20', CAST(N'2018-07-04' AS Date), N'18', N'20', N'東京成田NRT', N'桃園TPE')
INSERT [dbo].[ThemeJourneys] ([journeyId], [productId], [setOut], [returnDay], [deadline], [createDate], [price], [companyName], [goPlaneId], [returnPlaneId], [goStartDate], [goStartHour], [goStartMinute], [goEndDate], [goEndHour], [goEndMinute], [goStartWhere], [goEndWhere], [returnStartDate], [returnStartHour], [returnStartMinute], [returnEndDate], [returnEndHour], [returnEndMinute], [returnStartWhere], [returnEndWhere]) VALUES (3003, 203, CAST(N'2018-07-08' AS Date), CAST(N'2018-07-10' AS Date), CAST(N'2018-07-01' AS Date), CAST(N'2018-04-08' AS Date), N'32,800', N'中華航空', N'CI171', N'CI170', CAST(N'2018-07-08' AS Date), N'11', N'00', CAST(N'2018-07-08' AS Date), N'14', N'50', N'桃園TPE', N'日本福岡FUK', CAST(N'2018-07-10' AS Date), N'16', N'20', CAST(N'2018-07-10' AS Date), N'18', N'20', N'日本福岡FUK', N'桃園TPE')
INSERT [dbo].[ThemeJourneys] ([journeyId], [productId], [setOut], [returnDay], [deadline], [createDate], [price], [companyName], [goPlaneId], [returnPlaneId], [goStartDate], [goStartHour], [goStartMinute], [goEndDate], [goEndHour], [goEndMinute], [goStartWhere], [goEndWhere], [returnStartDate], [returnStartHour], [returnStartMinute], [returnEndDate], [returnEndHour], [returnEndMinute], [returnStartWhere], [returnEndWhere]) VALUES (3004, 201, CAST(N'2018-07-01' AS Date), CAST(N'2018-07-03' AS Date), CAST(N'2018-06-25' AS Date), CAST(N'2018-04-01' AS Date), N'29,200', N'中華航空', N'CI178', N'CI179', CAST(N'2018-07-01' AS Date), N'11', N'00', CAST(N'2018-07-01' AS Date), N'14', N'50', N'桃園TPE', N'大阪關西KIX', CAST(N'2018-07-03' AS Date), N'16', N'20', CAST(N'2018-07-03' AS Date), N'18', N'20', N'大阪關西KIX', N'桃園TPE')
INSERT [dbo].[ThemeJourneys] ([journeyId], [productId], [setOut], [returnDay], [deadline], [createDate], [price], [companyName], [goPlaneId], [returnPlaneId], [goStartDate], [goStartHour], [goStartMinute], [goEndDate], [goEndHour], [goEndMinute], [goStartWhere], [goEndWhere], [returnStartDate], [returnStartHour], [returnStartMinute], [returnEndDate], [returnEndHour], [returnEndMinute], [returnStartWhere], [returnEndWhere]) VALUES (3005, 202, CAST(N'2018-07-15' AS Date), CAST(N'2018-07-17' AS Date), CAST(N'2018-07-10' AS Date), CAST(N'2018-04-15' AS Date), N'35,800', N'中華航空', N'CI166', N'CI156', CAST(N'2018-07-15' AS Date), N'11', N'00', CAST(N'2018-07-15' AS Date), N'14', N'50', N'桃園TPE', N'東京成田NRT', CAST(N'2018-07-17' AS Date), N'16', N'20', CAST(N'2018-07-17' AS Date), N'18', N'20', N'東京成田NRT', N'桃園TPE')
INSERT [dbo].[ThemeJourneys] ([journeyId], [productId], [setOut], [returnDay], [deadline], [createDate], [price], [companyName], [goPlaneId], [returnPlaneId], [goStartDate], [goStartHour], [goStartMinute], [goEndDate], [goEndHour], [goEndMinute], [goStartWhere], [goEndWhere], [returnStartDate], [returnStartHour], [returnStartMinute], [returnEndDate], [returnEndHour], [returnEndMinute], [returnStartWhere], [returnEndWhere]) VALUES (3006, 203, CAST(N'2018-07-22' AS Date), CAST(N'2018-07-14' AS Date), CAST(N'2018-07-15' AS Date), CAST(N'2018-04-25' AS Date), N'31,200', N'國泰航空', N'CX568', N'CX569', CAST(N'2018-07-22' AS Date), N'11', N'00', CAST(N'2018-07-22' AS Date), N'14', N'50', N'桃園TPE', N'日本福岡FUK', CAST(N'2018-07-14' AS Date), N'16', N'20', CAST(N'2018-07-14' AS Date), N'18', N'20', N'日本福岡FUK', N'桃園TPE')
INSERT [dbo].[ThemeJourneys] ([journeyId], [productId], [setOut], [returnDay], [deadline], [createDate], [price], [companyName], [goPlaneId], [returnPlaneId], [goStartDate], [goStartHour], [goStartMinute], [goEndDate], [goEndHour], [goEndMinute], [goStartWhere], [goEndWhere], [returnStartDate], [returnStartHour], [returnStartMinute], [returnEndDate], [returnEndHour], [returnEndMinute], [returnStartWhere], [returnEndWhere]) VALUES (3007, 201, CAST(N'2018-07-10' AS Date), CAST(N'2018-07-12' AS Date), CAST(N'2018-07-07' AS Date), CAST(N'2018-04-11' AS Date), N'30,800', N'國泰航空', N'CX568', N'CX569', CAST(N'2018-07-10' AS Date), N'11', N'00', CAST(N'2018-07-10' AS Date), N'14', N'50', N'桃園TPE', N'大阪關西KIX', CAST(N'2018-07-12' AS Date), N'16', N'20', CAST(N'2018-07-12' AS Date), N'18', N'20', N'大阪關西KIX', N'桃園TPE')
INSERT [dbo].[ThemeJourneys] ([journeyId], [productId], [setOut], [returnDay], [deadline], [createDate], [price], [companyName], [goPlaneId], [returnPlaneId], [goStartDate], [goStartHour], [goStartMinute], [goEndDate], [goEndHour], [goEndMinute], [goStartWhere], [goEndWhere], [returnStartDate], [returnStartHour], [returnStartMinute], [returnEndDate], [returnEndHour], [returnEndMinute], [returnStartWhere], [returnEndWhere]) VALUES (3008, 202, CAST(N'2018-07-22' AS Date), CAST(N'2018-07-24' AS Date), CAST(N'2018-07-17' AS Date), CAST(N'2018-04-28' AS Date), N'32,800', N'長榮航空', N'BR108', N'BR109', CAST(N'2018-07-22' AS Date), N'11', N'00', CAST(N'2018-07-22' AS Date), N'14', N'50', N'桃園TPE', N'東京成田NRT', CAST(N'2018-07-24' AS Date), N'16', N'20', CAST(N'2018-07-24' AS Date), N'18', N'20', N'東京成田NRT', N'桃園TPE')
INSERT [dbo].[ThemeJourneys] ([journeyId], [productId], [setOut], [returnDay], [deadline], [createDate], [price], [companyName], [goPlaneId], [returnPlaneId], [goStartDate], [goStartHour], [goStartMinute], [goEndDate], [goEndHour], [goEndMinute], [goStartWhere], [goEndWhere], [returnStartDate], [returnStartHour], [returnStartMinute], [returnEndDate], [returnEndHour], [returnEndMinute], [returnStartWhere], [returnEndWhere]) VALUES (3009, 203, CAST(N'2018-07-28' AS Date), CAST(N'2018-07-30' AS Date), CAST(N'2018-07-22' AS Date), CAST(N'2018-05-01' AS Date), N'33,800', N'中華航空', N'CI174', N'CI175', CAST(N'2018-07-28' AS Date), N'11', N'00', CAST(N'2018-07-28' AS Date), N'14', N'50', N'桃園TPE', N'日本福岡FUK', CAST(N'2018-07-30' AS Date), N'16', N'20', CAST(N'2018-07-30' AS Date), N'18', N'20', N'日本福岡FUK', N'桃園TPE')
SET IDENTITY_INSERT [dbo].[ThemeJourneys] OFF
SET IDENTITY_INSERT [dbo].[ThemeProducts] ON 

INSERT [dbo].[ThemeProducts] ([productId], [titleId], [productName], [country], [hotelName], [adImage], [adImageName], [adTitle], [adDes], [ad1], [ad2], [ad3], [title1], [image1], [fileName1], [descriTitle1], [description1], [breakfast1], [lunch1], [dinner1], [title2], [image2], [fileName2], [descriTitle2], [description2], [breakfast2], [lunch2], [dinner2], [title3], [image3], [fileName3], [descriTitle3], [description3], [breakfast3], [lunch3], [dinner3]) VALUES (201, 106, N'絢彩樂訪．環球影城魔法世界三日', N'日本', N'環球影城港灣', NULL, NULL, N'環球影城～進入夢幻的魔法國度', N'探訪京阪神，關西著名景點輕鬆遊', N'神戶與動物同樂遊：神戶動物王國．不分年齡的歡樂國度', N'嵐山保津川遊激流：獨家安排．遊船體驗', N'限量加贈環球影城快速通關4項券！', N'台北／關西空港／神戶花鳥園／京都車站', NULL, NULL, N'神戶花鳥園', N'神戶花鳥園是個強調花草、鳥、動物與人的共生動物樂園，在百花齊放的美麗園區裡，遊客可以近距離接觸可愛動物們，試試餵食最受歡迎的水豚們，輕撫可愛的羊駝，以及體驗猛禽貓頭鷹從頭上低空飛過等等。全天候都能盡情遊玩的室內動物園，老少咸宜，盡情歡樂。', N'無', N'風味拉麵簡餐', N'和洋創作料理', N'歡樂暢遊．日本環球影城樂園☆前10名報名付訂者特別贈送快速通關4項券☆', NULL, NULL, N'日本環球影城樂園', N'日本環球影城是美國環球製片廠的精心傑作，耗資日幣1700億建造完成，總面積達54公頃，園區內共計有63種遊樂設施，皆以好萊塢熱門電影為主題，讓遊客就像置身於電影拍片現場，親身體驗「魔鬼終結者」、「蜘蛛人」、「史瑞克」等賣座電影的迷人魅力，另外還有水世界、西部牛仔槍戰等精彩絕倫的表演活動正熱烈上演，接下來請搭乘橡皮艇進入侏儸紀公園的恐龍冒險世界，另外還有海洋大白鯊之旅等等，絕對讓人永生難忘，園內眾多原創及自創品牌商店，讓您充分享受購物樂趣；最後於環球奇境中跟著史奴比、Hello Kitty與芝麻街卡通明星們一同起舞，進入夢幻的童話世界中，留下美好的快樂回憶。此外2014年7月15日隆重開幕，展開全新的哈利波特特區，讓你置身於霍格華滋城堡的魔法世界中，也可以欣賞街頭表演，跟著哈利波特一起翱翔天空之魔法的冒險，將會是一段讓您難以忘懷的旅程。', N'飯店內享用', N'自費自理', N'自費自理', N'奈良公園／東大寺／心齋橋', NULL, NULL, N'奈良公園', N'是一所東西約4公里、南北約2公里的公園，園內寬闊的草甸上有許多小鹿在嬉戲玩耍，潺潺流水、池塘和小溪?公園的景色增添了色彩，樹林中隱約可望見寺廟的大屋頂和塔樓。公園中一年四季景色優美如畫，終年觀光遊客絡繹不絕。', N'飯店內享用', N'自費自理', N'機上享用')
INSERT [dbo].[ThemeProducts] ([productId], [titleId], [productName], [country], [hotelName], [adImage], [adImageName], [adTitle], [adDes], [ad1], [ad2], [ad3], [title1], [image1], [fileName1], [descriTitle1], [description1], [breakfast1], [lunch1], [dinner1], [title2], [image2], [fileName2], [descriTitle2], [description2], [breakfast2], [lunch2], [dinner2], [title3], [image3], [fileName3], [descriTitle3], [description3], [breakfast3], [lunch3], [dinner3]) VALUES (202, 106, N'歡樂迪士尼．東京晴空塔三日', N'日本', N'東京帝國', NULL, NULL, N'東京迪士尼樂園(東京迪士尼海洋)', N'帶您深入前往依山傍海的千葉縣，走訪日本人深愛的美食輕鬆渡假方式', N'嚴選名宿：安排專車由樂園返回飯店。盡情遊樂不怕擠電車！', N'千葉縣鹿野山山頂的母親牧場：遼闊的牧場可愛的動物讓人笑的開懷。', N'東京晴空塔：特別安排 ~登上350M天空展望台', N'台北／成田空港', NULL, NULL, N'龍宮城三日月', N'龍宮城三日月溫泉飯店全部房間皆面東京灣，可欣賞迷人的海景。挑高宮殿式建築與華麗氣派的大廳讓人留下深刻的印象，日本規模最大的溫泉SPA中心裡有100多種風格各異的溫泉SPA浴池：貴妃珍珠浴、百草藥浴、咖啡浴、溫泉滑水道、戶外溫泉泳池(請著泳裝)...等等，泡湯時還能眺望海天一線的東京灣海景，白天時船隻緩緩駛過，入夜後，靜靜的欣賞停泊在海平面上的船隻點點燈火，彷彿置身神話中的龍宮之湯，忘卻了塵世間的紛擾。', N'無', N'機上享用', N'日式特色料理', N'歡樂迪士尼樂園(海洋)', NULL, NULL, N'迪士尼樂園', N'早餐後，由導遊帶領直奔充滿幻想與魔法的王國「東京迪士尼樂園」，在佔地46萬㎡的廣大園地上，主要分為：世界市集、探險樂園、西部樂園、夢幻樂園、明日樂園、動物天地跟卡通城七大區，迪士尼樂園有不斷推陳出新各種嶄新活動與娛樂設施，讓您的歡樂、感動與驚奇不斷，園區內每天上演著各種精彩的表演活動與卡通人物大遊行，數十種娛樂設施更是集合了刺激與歡笑的冒險旅程，您可以開心與卡通名星合照，或是盡情的於「伊客斯皮兒莉」小鎮逛街購物，迪士尼的歡樂超越了所有限制，讓每位遊客都帶回滿滿的幸福，留下讓人難以忘懷的歡樂記憶。', N'飯店內享用', N'自費自理', N'自費自理', N'成田空港／台北', NULL, NULL, N'淺草寺', N'東京都內歷史最悠久的寺院', N'飯店內享用', N'自費自理', N'機上享用')
INSERT [dbo].[ThemeProducts] ([productId], [titleId], [productName], [country], [hotelName], [adImage], [adImageName], [adTitle], [adDes], [ad1], [ad2], [ad3], [title1], [image1], [fileName1], [descriTitle1], [description1], [breakfast1], [lunch1], [dinner1], [title2], [image2], [fileName2], [descriTitle2], [description2], [breakfast2], [lunch2], [dinner2], [title3], [image3], [fileName3], [descriTitle3], [description3], [breakfast3], [lunch3], [dinner3]) VALUES (203, 106, N'豪斯登堡煙火爭艷．璀璨魔幻光之祭三日', N'日本', N'豪斯登堡飯店', NULL, NULL, N'盛夏饗宴：豪斯登堡煙火秀～保證入住豪斯登堡內飯店', N'夢幻光影：御船山樂園光之祭', N'特別安排入住豪斯登堡內', N'充足利用時間欣賞各季盛開花朵、道地特色餐點，享受悠閒渡假時光。', N'精彩炫目的夏天，就在九州！ ', N'台北／福岡空港／一蘭之森／虹之松原', NULL, NULL, N'一蘭之森', N'一蘭之森是台灣很有名的一蘭拉麵的工場跟店面，這家工場在福岡郊區的綠色森林裡面，我們安排下飛機直接去吃拉麵─有限定版的拉麵喔！', N'無', N'機上享用', N'日式特色料理', N'唐津呼子朝市／七釜遊船／豪斯登堡', NULL, NULL, N'豪斯登堡樂園 ～森林之家', N'早上逛逛日本三大朝市之一的呼子朝市。七釜是經過漫長時間以及波濤不絕的海浪侵蝕而生成的七個洞窟，我們乘坐可愛的遊覽船(IKAMARU)從大海進入洞窟內參觀。午餐安排吃新鮮的花枝料裡，傍晚到豪斯登堡─期待晚上的煙火大會。', N'飯店內享用', N'自費自理', N'自費自理', N'福岡空港／台北', NULL, NULL, N'博多運河城', N'來到太宰府天滿宮要買學業成就的御守，逛參道兩邊的商店時候，推薦買現烤的”枝餅”外面脆脆裡面軟～真好好吃！', N'飯店內享用', N'自費自理', N'機上享用')
INSERT [dbo].[ThemeProducts] ([productId], [titleId], [productName], [country], [hotelName], [adImage], [adImageName], [adTitle], [adDes], [ad1], [ad2], [ad3], [title1], [image1], [fileName1], [descriTitle1], [description1], [breakfast1], [lunch1], [dinner1], [title2], [image2], [fileName2], [descriTitle2], [description2], [breakfast2], [lunch2], [dinner2], [title3], [image3], [fileName3], [descriTitle3], [description3], [breakfast3], [lunch3], [dinner3]) VALUES (204, 104, N'秘境三湯．璀璨絕美三日', N'韓國', N'釜山大飯店', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThemeProducts] ([productId], [titleId], [productName], [country], [hotelName], [adImage], [adImageName], [adTitle], [adDes], [ad1], [ad2], [ad3], [title1], [image1], [fileName1], [descriTitle1], [description1], [breakfast1], [lunch1], [dinner1], [title2], [image2], [fileName2], [descriTitle2], [description2], [breakfast2], [lunch2], [dinner2], [title3], [image3], [fileName3], [descriTitle3], [description3], [breakfast3], [lunch3], [dinner3]) VALUES (205, 104, N'花鳥風月．風雅三日', N'韓國', N'首爾飯店', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThemeProducts] ([productId], [titleId], [productName], [country], [hotelName], [adImage], [adImageName], [adTitle], [adDes], [ad1], [ad2], [ad3], [title1], [image1], [fileName1], [descriTitle1], [description1], [breakfast1], [lunch1], [dinner1], [title2], [image2], [fileName2], [descriTitle2], [description2], [breakfast2], [lunch2], [dinner2], [title3], [image3], [fileName3], [descriTitle3], [description3], [breakfast3], [lunch3], [dinner3]) VALUES (206, 101, N'普羅旺斯薰衣草．南法香氛九日', N'法國', N'拉埃達普酒店', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThemeProducts] ([productId], [titleId], [productName], [country], [hotelName], [adImage], [adImageName], [adTitle], [adDes], [ad1], [ad2], [ad3], [title1], [image1], [fileName1], [descriTitle1], [description1], [breakfast1], [lunch1], [dinner1], [title2], [image2], [fileName2], [descriTitle2], [description2], [breakfast2], [lunch2], [dinner2], [title3], [image3], [fileName3], [descriTitle3], [description3], [breakfast3], [lunch3], [dinner3]) VALUES (207, 107, N'我的足跡．愛丁堡軍樂節日九日', N'英國', N'約克萬豪酒店', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThemeProducts] ([productId], [titleId], [productName], [country], [hotelName], [adImage], [adImageName], [adTitle], [adDes], [ad1], [ad2], [ad3], [title1], [image1], [fileName1], [descriTitle1], [description1], [breakfast1], [lunch1], [dinner1], [title2], [image2], [fileName2], [descriTitle2], [description2], [breakfast2], [lunch2], [dinner2], [title3], [image3], [fileName3], [descriTitle3], [description3], [breakfast3], [lunch3], [dinner3]) VALUES (208, 101, N'富良野花海．旭山動物園五日', N'日本', N'札幌大倉', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThemeProducts] ([productId], [titleId], [productName], [country], [hotelName], [adImage], [adImageName], [adTitle], [adDes], [ad1], [ad2], [ad3], [title1], [image1], [fileName1], [descriTitle1], [description1], [breakfast1], [lunch1], [dinner1], [title2], [image2], [fileName2], [descriTitle2], [description2], [breakfast2], [lunch2], [dinner2], [title3], [image3], [fileName3], [descriTitle3], [description3], [breakfast3], [lunch3], [dinner3]) VALUES (209, 105, N'黑部立山雪迴廊．世界遺產白川鄉三日', N'日本', N'高山ASSOCIA ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ThemeProducts] OFF
SET IDENTITY_INSERT [dbo].[ThemeTitles] ON 

INSERT [dbo].[ThemeTitles] ([titleId], [titleName], [fileName], [titleImage]) VALUES (101, N'賞花', N'themeTitle-賞花.png', NULL)
INSERT [dbo].[ThemeTitles] ([titleId], [titleName], [fileName], [titleImage]) VALUES (102, N'馬拉松', N'themeTitle-馬拉松.png', NULL)
INSERT [dbo].[ThemeTitles] ([titleId], [titleName], [fileName], [titleImage]) VALUES (103, N'滑雪', N'themeTitle-滑雪.png', NULL)
INSERT [dbo].[ThemeTitles] ([titleId], [titleName], [fileName], [titleImage]) VALUES (104, N'溫泉', N'themeTitle-溫泉.png', NULL)
INSERT [dbo].[ThemeTitles] ([titleId], [titleName], [fileName], [titleImage]) VALUES (105, N'登山', N'themeTitle-登山.png', NULL)
INSERT [dbo].[ThemeTitles] ([titleId], [titleName], [fileName], [titleImage]) VALUES (106, N'遊樂園', N'themeTitle-遊樂園.png', NULL)
INSERT [dbo].[ThemeTitles] ([titleId], [titleName], [fileName], [titleImage]) VALUES (107, N'音樂', N'themeTitle-音樂.png', NULL)
INSERT [dbo].[ThemeTitles] ([titleId], [titleName], [fileName], [titleImage]) VALUES (108, N'古文明', N'themeTitle-古文明.png', NULL)
INSERT [dbo].[ThemeTitles] ([titleId], [titleName], [fileName], [titleImage]) VALUES (109, N'遊輪', N'themeTitle-遊輪.png', NULL)
INSERT [dbo].[ThemeTitles] ([titleId], [titleName], [fileName], [titleImage]) VALUES (110, N'高爾夫', N'themeTitle-高爾夫.png', NULL)
INSERT [dbo].[ThemeTitles] ([titleId], [titleName], [fileName], [titleImage]) VALUES (111, N'海外婚禮', N'themeTitle-海外婚禮.png', NULL)
SET IDENTITY_INSERT [dbo].[ThemeTitles] OFF
ALTER TABLE [dbo].[ThemeApplications]  WITH CHECK ADD FOREIGN KEY([journeyId])
REFERENCES [dbo].[ThemeJourneys] ([journeyId])
GO
ALTER TABLE [dbo].[ThemeJourneys]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[ThemeProducts] ([productId])
GO
ALTER TABLE [dbo].[ThemeProducts]  WITH CHECK ADD FOREIGN KEY([titleId])
REFERENCES [dbo].[ThemeTitles] ([titleId])
GO

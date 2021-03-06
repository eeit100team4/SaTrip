/****** Object:  Table [dbo].[CustomerOpinion]    Script Date: 2018/5/28 上午 11:25:14 ******/
DROP TABLE [dbo].[CustomerOpinion]
GO
/****** Object:  Table [dbo].[CustomerOpinion]    Script Date: 2018/5/28 上午 11:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOpinion](
	[pkid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
	[sex] [varchar](150) NULL,
	[age] [varchar](200) NULL,
	[phone] [varchar](200) NULL,
	[email] [varchar](200) NULL,
	[address] [varchar](200) NULL,
	[opinion] [varchar](200) NULL,
	[comment] [varchar](max) NULL,
	[feedback] [varchar](max) NULL,
	[messagetime] [datetime2](7) NULL,
	[feedbackmessagetime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[pkid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomerOpinion] ON 

INSERT [dbo].[CustomerOpinion] ([pkid], [name], [sex], [age], [phone], [email], [address], [opinion], [comment], [feedback], [messagetime], [feedbackmessagetime]) VALUES (1087, N'王曉明', N'男', N'30', N'0912333444', N'pp09120912@hotmail.com', N'新竹市', N'紅利點數', N'紅利點數能做什麼用?', N'紅利點數能兌換商品', CAST(N'2018-05-28T01:22:13.8400000' AS DateTime2), CAST(N'2018-05-28T01:22:13.8400000' AS DateTime2))
INSERT [dbo].[CustomerOpinion] ([pkid], [name], [sex], [age], [phone], [email], [address], [opinion], [comment], [feedback], [messagetime], [feedbackmessagetime]) VALUES (1088, N'彭于晏', N'男', N'35', N'0912088200', N'pp09120912@hotmail.com', N'台北市', N'機票預訂', N'預訂機票可以使用信用卡付款嗎?', N'可以的唷', CAST(N'2018-05-28T01:46:05.6010000' AS DateTime2), CAST(N'2018-05-28T01:46:05.6010000' AS DateTime2))
INSERT [dbo].[CustomerOpinion] ([pkid], [name], [sex], [age], [phone], [email], [address], [opinion], [comment], [feedback], [messagetime], [feedbackmessagetime]) VALUES (1089, N'蔡依琳', N'女', N'36', N'0928555678', N'jolintasi@gmail.com', N'台北市', N'飯店預訂', N'網頁上訂購成功是否就保證入住？', N'若是在訂單成立的同時刷卡付費，Traveler便保證入住及不漲價。', CAST(N'2018-05-28T02:06:18.0690000' AS DateTime2), CAST(N'2018-05-28T02:06:18.0690000' AS DateTime2))
INSERT [dbo].[CustomerOpinion] ([pkid], [name], [sex], [age], [phone], [email], [address], [opinion], [comment], [feedback], [messagetime], [feedbackmessagetime]) VALUES (1090, N'鄧紫棋', N'女', N'27', N'0935222636', N'gendeng@hotmail.com', N'台中市', N'旅遊資訊', N'套裝行程需要多久前訂購？', N'一般而言，為配合為您安排及確認訂位及訂房所需的時間，平日出發，請於出發日前三個工作天訂購；如屬假日出發，請儘早預訂。', CAST(N'2018-05-28T02:18:49.7060000' AS DateTime2), CAST(N'2018-05-28T02:18:49.7060000' AS DateTime2))
INSERT [dbo].[CustomerOpinion] ([pkid], [name], [sex], [age], [phone], [email], [address], [opinion], [comment], [feedback], [messagetime], [feedbackmessagetime]) VALUES (1091, N'田馥甄', N'女', N'34', N'0913131013', N'tianhebe@gmail.com', N'桃園市', N'紅利點數', N'如何獲得紅利點數？', N'購買商品獲得紅利點數：
於Traveler官方網站購買商品，每消費20元，即可獲得紅利點數1點。', CAST(N'2018-05-28T02:21:06.3110000' AS DateTime2), CAST(N'2018-05-28T02:21:06.3110000' AS DateTime2))
INSERT [dbo].[CustomerOpinion] ([pkid], [name], [sex], [age], [phone], [email], [address], [opinion], [comment], [feedback], [messagetime], [feedbackmessagetime]) VALUES (1092, N'陳嘉樺', N'女', N'36', N'0985658987', N'ellachen@yahoo.com.tw', N'基隆市', N'會員服務專區', N'為什麼會員都要自己設密碼呢？', N'為了安全起見，這個密碼就像一把鎖，必需要有密碼才可以進到您的個人資料區。而在您的資料區裡您可以查詢您的閱覽最新活動訊息及更改您的個人資料。', CAST(N'2018-05-28T02:24:44.7120000' AS DateTime2), CAST(N'2018-05-28T02:24:44.7120000' AS DateTime2))
INSERT [dbo].[CustomerOpinion] ([pkid], [name], [sex], [age], [phone], [email], [address], [opinion], [comment], [feedback], [messagetime], [feedbackmessagetime]) VALUES (1093, N'陳芳語', N'女', N'26', N'0955741456', N'KimberleyChen@gmail.com', N'台北市', N'意見回饋', N'你們的導遊好專業', N'感謝您的支持與鼓勵，您的鼓勵是Traveler最大的原動力。', CAST(N'2018-05-28T02:27:26.0490000' AS DateTime2), CAST(N'2018-05-28T02:27:26.0490000' AS DateTime2))
INSERT [dbo].[CustomerOpinion] ([pkid], [name], [sex], [age], [phone], [email], [address], [opinion], [comment], [feedback], [messagetime], [feedbackmessagetime]) VALUES (1094, N'馬力莎', N'女', N'40', N'0987563125', N'marry125@gmail.com', N'花蓮縣', N'機票預訂', N'如何訂購機票？', N'此系統將單純提供機票訂購，並僅顯示當前有機位的機票，訂購前請先登入/註冊會員，以利後續訂購順暢。', CAST(N'2018-05-28T03:57:03.1160000' AS DateTime2), CAST(N'2018-05-28T03:57:03.1160000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[CustomerOpinion] OFF

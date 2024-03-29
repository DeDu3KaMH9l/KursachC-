USE [Chepotiev]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 09.03.2024 10:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IDCategory] [int] IDENTITY(1,1) NOT NULL,
	[Categoryes] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IDCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flowers]    Script Date: 09.03.2024 10:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flowers](
	[IDFlowers] [int] IDENTITY(1,1) NOT NULL,
	[NameFlower] [varchar](50) NULL,
	[DescriptionFlower] [text] NULL,
	[Image] [varchar](50) NULL,
	[IDCategory] [int] NULL,
 CONSTRAINT [PK_Flowers] PRIMARY KEY CLUSTERED 
(
	[IDFlowers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 09.03.2024 10:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[IDUserRole] [int] IDENTITY(1,1) NOT NULL,
	[UserRoles] [varchar](50) NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[IDUserRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09.03.2024 10:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IDUserRole] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([IDCategory], [Categoryes]) VALUES (1, N'Цветы однолетние')
INSERT [dbo].[Category] ([IDCategory], [Categoryes]) VALUES (2, N'Цветы двулетние')
INSERT [dbo].[Category] ([IDCategory], [Categoryes]) VALUES (3, N'Цветы многолетние')
INSERT [dbo].[Category] ([IDCategory], [Categoryes]) VALUES (4, N'Сорняки')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Flowers] ON 

INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (1, N'Агератум', N'Цветы агератума могут быть различных оттенков синего, фиолетового, розового, белого или голубого цвета. Они могут иметь компактные или разветвленные соцветия, состоящие из множества мелких цветков. Листья агератума обычно зеленые, овальной формы, расположены на противоположных стеблях.', N'/Pictures/ageratum.jpg', 1)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (2, N'Амарант', N'Цветы амаранта могут быть различных оттенков, включая красный, оранжевый, розовый, фиолетовый, зеленый и белый. Цветки обычно мелкие, собраны в густые соцветия. Листья амаранта обычно овальные или ланцетные, зеленые или красновато-коричневые, иногда с красными или фиолетовыми оттенками.', N'/Pictures/amarant.jpg', 1)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (3, N'Астры', N'Астры характеризуются красивыми, обильными и разноцветными цветками, собранными в соцветия различных форм и размеров - от кистевидных до зонтичных. Цветки астр могут быть белыми, розовыми, фиолетовыми, голубыми, красными или желтыми, а иногда они могут иметь двухцветные окраски.', N'/Pictures/astry.jpg', 1)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (4, N'Бархатцы', N'Бархатцы - это однолетние или многолетние растения семейства астровых. Они характеризуются крупными яркими цветками оранжевого, желтого или красного цвета. Бархатцы часто используются для украшения садов и клумб, а их запах помогает отпугивать насекомых.', N'/Pictures/barkhattsy-1.jpg', 1)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (5, N'Иберис', N'Иберис - это род многолетних цветковых растений, также известных как горчица-шалфей. Их цветки могут быть белыми, розовыми, фиолетовыми или фиолетово-розовыми. Иберисы часто используются для украшения каменистых садов и скальных горок.', N'/Pictures/iberis.jpg', 1)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (6, N'Бакопа', N'Бакопа - это многолетнее растение с мелкими цветками, расположенными на побегах. Они часто используются для озеленения горшков, контейнеров и висячих корзин благодаря своей способности каскадного роста.', N'/Pictures/bakopa-2.jpg', 1)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (7, N'Виола', N'Виола - это род растений семейства фиалковых, включающий множество видов однолетних и многолетних травянистых растений. Их цветки могут быть различных цветов, включая синий, фиолетовый, желтый и белый.', N'/Pictures/Anyutiny-glazki-_semena_.jpg', 2)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (8, N'Колокольчик', N'Колокольчики - это род растений семейства колокольчиковые. Они известны своими колокольчатыми цветками различных размеров и оттенков. Колокольчики часто используются для украшения садов и клумб.', N'/Pictures/Kolokolchik-sredniy-_semena_.jpeg', 2)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (9, N'Маргаритка', N'Маргаритка - это многолетнее травянистое растение с белыми или розовыми лепестками и желтым центром. Они распространены во многих регионах мира и часто используются для украшения цветников и газонов.', N'/Pictures/Margaritka-_semena_.jpg', 2)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (10, N'Незабудка', N'Незабудка - это многолетнее растение, известное своими нежными голубыми цветами, собранными в кистевидные соцветия. Они часто ассоциируются с нежностью и романтикой и используются для украшения садов и букетов.', N'/Pictures/Nezabudka.jpg', 2)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (11, N'Вероника', N'Вероника - это род растений семейства складчатокрылых, включающий множество видов многолетних травянистых растений. Их цветки могут быть синего, фиолетового, розового или белого цвета.', N'/Pictures/Veronika.jpg', 3)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (12, N'Гвоздика', N'Гвоздика - это род растений семейства гвоздиковые (Caryophyllaceae), включающий около 300 видов многолетних травянистых растений. Они характеризуются ароматными цветками различных оттенков, включая красный, розовый, белый и пурпурный.', N'/Pictures/Gvozdika-mnogoletnyaya.jpg', 3)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (13, N'Хризантема', N'Хризантема - это род растений семейства астровые, включающий около 40 видов многолетних цветковых растений. Они характеризуются крупными многолепестковыми цветками различных форм и цветов.', N'/Pictures/khrizantema-2.jpg', 3)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (14, N'Гипсофила', N'Гипсофила - это род растений семейства карнатовых, включающий около 100 видов травянистых растений. Они известны своими мелкими, нежными цветами, которые используются для украшения букетов и композиций.', N'/Pictures/Gipsofila.jpg', 3)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (15, N'Фиалка', N'Фиалка - это род растений семейства фиалковых, включающий множество видов многолетних и однолетних травянистых растений. Они характеризуются нежными цветками различных оттенков и широко используются для украшения садов и клумб.', N'/Pictures/Fialka-_semena_.jpg', 3)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (16, N'Мятник', N'Мятник - это род травянистых растений, известных своими ароматическими листьями и цветами. Они часто используются в кулинарии для добавления вкуса в блюда, а также в медицине и парфюмерии.', N'/Pictures/мятник.jpg', 4)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (17, N'Одуванчик', N'Одуванчик - это многолетнее травянистое растение с яркими желтыми цветками и молочным соком в стеблях и листьях. Он широко распространен во многих регионах мира и часто растет на лугах, полях и вдоль дорог.', N'/Pictures/oduvanchik.jpg', 4)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (18, N'Вьюнок полевой', N'Вьюнок полевой - это однолетнее или многолетнее растение с извилистыми стеблями и красивыми воронковидными цветками. Оно является сорняком и может быстро распространяться в сельском хозяйстве.', N'/Pictures/Вьюнок.jpg', 4)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (19, N'Крестовик', N'Крестовик - это род травянистых растений, включающий множество видов. Они часто растут в дикой природе и имеют разнообразные формы, размеры и цветы.', N'/Pictures/крестовик.jpg', 4)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (20, N'Пырей', N'Пырей - это род травянистых растений семейства злаковых (Poaceae), включающий множество видов, распространенных во многих регионах мира. Они обычно растут на лугах, полях и обочинах дорог.', N'/Pictures/пырей.jpg', 4)
INSERT [dbo].[Flowers] ([IDFlowers], [NameFlower], [DescriptionFlower], [Image], [IDCategory]) VALUES (21, N'Чертополох', N'Чертополох - это однолетнее травянистое растение с крупными, яркими колосками. Он часто растет как сорняк в полях и садах и может быстро распространяться.', N'/Pictures/Чертополох.jpg', 4)
SET IDENTITY_INSERT [dbo].[Flowers] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([IDUserRole], [UserRoles]) VALUES (1, N'Admin')
INSERT [dbo].[UserRole] ([IDUserRole], [UserRoles]) VALUES (2, N'Guest')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (1, N'Admin1', N'123456', 1)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (2, N'Test1', N'12345', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (3, N'Test2', N'12345', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (4, N'SunnySurfer', N'G#1sUf8R', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (5, N'AdventureSeeker', N'A$2dFs9P', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (6, N'WanderlustDreamer', N'Wz6@Qm7N', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (7, N'NatureExplorer', N'Nt2&Lw9S', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (8, N'UrbanNomad', N'U#3nAo4E', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (9, N'ArtisticAdventurer', N'A@5pGw6N', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (10, N'FitnessFanatic', N'Fz7&Kn8R', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (11, N'BookwormTraveler', N'Bw3%Tq9P', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (12, N'MusicMaven', N'M#4zWo5L', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (13, N'TechTrekker', N'Tt6$Lq2V', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (14, N'FoodieExplorer', N'Fe7@Xw3Z', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (15, N'CultureCrafter', N'C#8rMs4T', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (16, N'FitnessFreak', N'Ff2*Pn7A', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (17, N'AdventureAddict', N'Aa9$Gr6S', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (18, N'HappyHiker', N'H#3yDq8F', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (19, N'TravelBuff', N'Tb6@Wn4E', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (20, N'WanderlustLover', N'Wl8%Fo2R', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (21, N'AdventureSeeker', N'As5@Tp9L', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (22, N'NatureEnthusiast', N'Ne7$Wq3P', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (23, N'OutdoorExplorer', N'Oe9*Lr4S', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (24, N'AdventureJunkie', N'Aj3&Kn6A', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (25, N'Wanderer', N'W#5yHp7Q', 2)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (26, N'1', N'1', 1)
INSERT [dbo].[Users] ([ID], [Login], [Password], [IDUserRole]) VALUES (27, N'2', N'2', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Flowers]  WITH CHECK ADD  CONSTRAINT [FK_Flowers_Category] FOREIGN KEY([IDCategory])
REFERENCES [dbo].[Category] ([IDCategory])
GO
ALTER TABLE [dbo].[Flowers] CHECK CONSTRAINT [FK_Flowers_Category]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserRole] FOREIGN KEY([IDUserRole])
REFERENCES [dbo].[UserRole] ([IDUserRole])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserRole]
GO

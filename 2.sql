GO
/****** Object:  Table [dbo].[CategoryOfGoods]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryOfGoods](
	[CategoryOfGoodsID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryOfGoodsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[TypeOfClientID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompositionOfOrders]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompositionOfOrders](
	[CompositionOfOrdersID] [int] NOT NULL,
	[GoodsOrderID] [int] NOT NULL,
	[SupplyCompositionID] [int] NOT NULL,
	[PromotionID] [int] NULL,
	[Quantity] [int] NULL,
	[price_] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[CompositionOfOrdersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompositionOfServices]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompositionOfServices](
	[CompositionOfServicesID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[OrderServicesID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompositionOfServicesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] NOT NULL,
	[Value] [varchar](100) NOT NULL,
	[TypeOfContactID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PositionID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goods]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goods](
	[GoodsID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[CategoryOfGoodsID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GoodsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsOrderPriceList]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsOrderPriceList](
	[GoodsOrderPriceListID] [int] NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[GoodsID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GoodsOrderPriceListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsOrders]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsOrders](
	[GoodsOrderID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[ClientID] [int] NOT NULL,
	[OrderTypeID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GoodsOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderServices]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderServices](
	[OrderServicesID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[TotalPrice] [decimal](10, 2) NOT NULL,
	[ClientID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderServicesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderType]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderType](
	[OrderTypeID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[Date] [date] NOT NULL,
	[GoodsOrderID] [int] NOT NULL,
	[SupplyID] [int] NOT NULL,
	[PaymentMethodID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentForServices]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentForServices](
	[PaymentForServicesID] [int] NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[Date] [date] NOT NULL,
	[OrderServicesID] [int] NOT NULL,
	[PaymentMethodID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentForServicesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[PaymentMethodID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PositionID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotions](
	[PromotionID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Discount] [decimal](10, 2) NOT NULL,
	[TypeOfPromotionID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PromotionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[TypeOfServiceID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[TypeOfSupplierID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplies]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplies](
	[SupplyID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplyComposition]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplyComposition](
	[SupplyCompositionID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[SupplyID] [int] NOT NULL,
	[GoodsID] [int] NOT NULL,
	[WarehouseID] [int] NOT NULL,
	[price_] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplyCompositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfClient]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfClient](
	[TypeOfClientID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeOfClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfContact]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfContact](
	[TypeOfContactID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeOfContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfPromotion]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfPromotion](
	[TypeOfPromotionID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeOfPromotionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfService]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfService](
	[TypeOfServiceID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeOfServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfSupplier]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfSupplier](
	[TypeOfSupplierID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeOfSupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfSupply]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfSupply](
	[TypeOfSupplyID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeOfSupplyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfWriteOff]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfWriteOff](
	[TypeOfWriteOffID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeOfWriteOffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[EmployeeID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[WarehouseID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WarehouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WriteOff]    Script Date: 4/8/2023 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WriteOff](
	[WriteOffID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TypeOfWriteOffID] [int] NOT NULL,
	[SupplyCompositionID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WriteOffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_ContactID] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_ContactID]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_TypeOfClient] FOREIGN KEY([TypeOfClientID])
REFERENCES [dbo].[TypeOfClient] ([TypeOfClientID])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_TypeOfClient]
GO
ALTER TABLE [dbo].[CompositionOfOrders]  WITH CHECK ADD  CONSTRAINT [FK_CompositionOfOrders_GoodsOrders] FOREIGN KEY([GoodsOrderID])
REFERENCES [dbo].[GoodsOrders] ([GoodsOrderID])
GO
ALTER TABLE [dbo].[CompositionOfOrders] CHECK CONSTRAINT [FK_CompositionOfOrders_GoodsOrders]
GO
ALTER TABLE [dbo].[CompositionOfOrders]  WITH CHECK ADD  CONSTRAINT [FK_CompositionOfOrders_Promotions] FOREIGN KEY([PromotionID])
REFERENCES [dbo].[Promotions] ([PromotionID])
GO
ALTER TABLE [dbo].[CompositionOfOrders] CHECK CONSTRAINT [FK_CompositionOfOrders_Promotions]
GO
ALTER TABLE [dbo].[CompositionOfOrders]  WITH CHECK ADD  CONSTRAINT [FK_CompositionOfOrders_SupplyComposition] FOREIGN KEY([SupplyCompositionID])
REFERENCES [dbo].[SupplyComposition] ([SupplyCompositionID])
GO
ALTER TABLE [dbo].[CompositionOfOrders] CHECK CONSTRAINT [FK_CompositionOfOrders_SupplyComposition]
GO
ALTER TABLE [dbo].[CompositionOfServices]  WITH CHECK ADD  CONSTRAINT [FK_CompositionOfServices_OrderServices] FOREIGN KEY([OrderServicesID])
REFERENCES [dbo].[OrderServices] ([OrderServicesID])
GO
ALTER TABLE [dbo].[CompositionOfServices] CHECK CONSTRAINT [FK_CompositionOfServices_OrderServices]
GO
ALTER TABLE [dbo].[CompositionOfServices]  WITH CHECK ADD  CONSTRAINT [FK_CompositionOfServices_Services] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Services] ([ServiceID])
GO
ALTER TABLE [dbo].[CompositionOfServices] CHECK CONSTRAINT [FK_CompositionOfServices_Services]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_TypeOfContact] FOREIGN KEY([TypeOfContactID])
REFERENCES [dbo].[TypeOfContact] ([TypeOfContactID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_TypeOfContact]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([PositionID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Position]
GO
ALTER TABLE [dbo].[Goods]  WITH CHECK ADD  CONSTRAINT [FK_Goods_CategoryOfGoods] FOREIGN KEY([CategoryOfGoodsID])
REFERENCES [dbo].[CategoryOfGoods] ([CategoryOfGoodsID])
GO
ALTER TABLE [dbo].[Goods] CHECK CONSTRAINT [FK_Goods_CategoryOfGoods]
GO
ALTER TABLE [dbo].[GoodsOrderPriceList]  WITH CHECK ADD  CONSTRAINT [FK_GoodsOrderPriceList_Goods] FOREIGN KEY([GoodsID])
REFERENCES [dbo].[Goods] ([GoodsID])
GO
ALTER TABLE [dbo].[GoodsOrderPriceList] CHECK CONSTRAINT [FK_GoodsOrderPriceList_Goods]
GO
ALTER TABLE [dbo].[GoodsOrders]  WITH CHECK ADD  CONSTRAINT [FK_GoodsOrders_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[GoodsOrders] CHECK CONSTRAINT [FK_GoodsOrders_Clients]
GO
ALTER TABLE [dbo].[GoodsOrders]  WITH CHECK ADD  CONSTRAINT [FK_GoodsOrders_OrderType] FOREIGN KEY([OrderTypeID])
REFERENCES [dbo].[OrderType] ([OrderTypeID])
GO
ALTER TABLE [dbo].[GoodsOrders] CHECK CONSTRAINT [FK_GoodsOrders_OrderType]
GO
ALTER TABLE [dbo].[GoodsOrders]  WITH CHECK ADD  CONSTRAINT [FK_GoodsOrders_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[GoodsOrders] CHECK CONSTRAINT [FK_GoodsOrders_Status]
GO
ALTER TABLE [dbo].[OrderServices]  WITH CHECK ADD  CONSTRAINT [FK_OrderServices_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[OrderServices] CHECK CONSTRAINT [FK_OrderServices_Clients]
GO
ALTER TABLE [dbo].[OrderServices]  WITH CHECK ADD  CONSTRAINT [FK_OrderServices_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[OrderServices] CHECK CONSTRAINT [FK_OrderServices_Status]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_GoodsOrders] FOREIGN KEY([GoodsOrderID])
REFERENCES [dbo].[GoodsOrders] ([GoodsOrderID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_GoodsOrders]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_PaymentMethod] FOREIGN KEY([PaymentMethodID])
REFERENCES [dbo].[PaymentMethod] ([PaymentMethodID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_PaymentMethod]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Supplies] FOREIGN KEY([SupplyID])
REFERENCES [dbo].[Supplies] ([SupplyID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Supplies]
GO
ALTER TABLE [dbo].[PaymentForServices]  WITH CHECK ADD  CONSTRAINT [FK_PaymentForServices_OrderServices] FOREIGN KEY([OrderServicesID])
REFERENCES [dbo].[OrderServices] ([OrderServicesID])
GO
ALTER TABLE [dbo].[PaymentForServices] CHECK CONSTRAINT [FK_PaymentForServices_OrderServices]
GO
ALTER TABLE [dbo].[PaymentForServices]  WITH CHECK ADD  CONSTRAINT [FK_PaymentForServices_PaymentMethod] FOREIGN KEY([PaymentMethodID])
REFERENCES [dbo].[PaymentMethod] ([PaymentMethodID])
GO
ALTER TABLE [dbo].[PaymentForServices] CHECK CONSTRAINT [FK_PaymentForServices_PaymentMethod]
GO
ALTER TABLE [dbo].[Promotions]  WITH CHECK ADD  CONSTRAINT [FK_Promotions_TypeOfPromotion] FOREIGN KEY([TypeOfPromotionID])
REFERENCES [dbo].[TypeOfPromotion] ([TypeOfPromotionID])
GO
ALTER TABLE [dbo].[Promotions] CHECK CONSTRAINT [FK_Promotions_TypeOfPromotion]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_TypeOfService] FOREIGN KEY([TypeOfServiceID])
REFERENCES [dbo].[TypeOfService] ([TypeOfServiceID])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_TypeOfService]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_TypeOfSupplier] FOREIGN KEY([TypeOfSupplierID])
REFERENCES [dbo].[TypeOfSupplier] ([TypeOfSupplierID])
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_Suppliers_TypeOfSupplier]
GO
ALTER TABLE [dbo].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Supplies] CHECK CONSTRAINT [FK_Supplies_Employees]
GO
ALTER TABLE [dbo].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Supplies] CHECK CONSTRAINT [FK_Supplies_Suppliers]
GO
ALTER TABLE [dbo].[SupplyComposition]  WITH CHECK ADD  CONSTRAINT [FK_SupplyComposition_Goods] FOREIGN KEY([GoodsID])
REFERENCES [dbo].[Goods] ([GoodsID])
GO
ALTER TABLE [dbo].[SupplyComposition] CHECK CONSTRAINT [FK_SupplyComposition_Goods]
GO
ALTER TABLE [dbo].[SupplyComposition]  WITH CHECK ADD  CONSTRAINT [FK_SupplyComposition_Supplies] FOREIGN KEY([SupplyID])
REFERENCES [dbo].[Supplies] ([SupplyID])
GO
ALTER TABLE [dbo].[SupplyComposition] CHECK CONSTRAINT [FK_SupplyComposition_Supplies]
GO
ALTER TABLE [dbo].[SupplyComposition]  WITH CHECK ADD  CONSTRAINT [FK_SupplyComposition_Warehouse] FOREIGN KEY([WarehouseID])
REFERENCES [dbo].[Warehouse] ([WarehouseID])
GO
ALTER TABLE [dbo].[SupplyComposition] CHECK CONSTRAINT [FK_SupplyComposition_Warehouse]
GO
ALTER TABLE [dbo].[UserType]  WITH CHECK ADD  CONSTRAINT [FK_UserType_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[UserType] CHECK CONSTRAINT [FK_UserType_Employees]
GO
ALTER TABLE [dbo].[WriteOff]  WITH CHECK ADD  CONSTRAINT [FK_WriteOff_SupplyComposition] FOREIGN KEY([SupplyCompositionID])
REFERENCES [dbo].[SupplyComposition] ([SupplyCompositionID])
GO
ALTER TABLE [dbo].[WriteOff] CHECK CONSTRAINT [FK_WriteOff_SupplyComposition]
GO
ALTER TABLE [dbo].[WriteOff]  WITH CHECK ADD  CONSTRAINT [FK_WriteOff_TypeOfWriteOff] FOREIGN KEY([TypeOfWriteOffID])
REFERENCES [dbo].[TypeOfWriteOff] ([TypeOfWriteOffID])
GO
ALTER TABLE [dbo].[WriteOff] CHECK CONSTRAINT [FK_WriteOff_TypeOfWriteOff]
GO

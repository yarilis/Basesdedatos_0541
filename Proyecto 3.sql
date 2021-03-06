
/* Nombre: Lucia Montero
   Matricula: 16-SIIN-1-166
   Seccion: 0541 */

USE [master]
GO
/****** Object:  Database [BaseDeDatos2]    Script Date: 09/04/2018 19:03:18 ******/
CREATE DATABASE [BaseDeDatos2]
USE [BaseDeDatos2]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 09/04/2018 19:03:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Precio] [int] NULL,
	[Fabricante] [int] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fabricantes]    Script Date: 09/04/2018 19:03:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricantes](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Fabricantes] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (1, N'T-Shirt', 700, 1)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (2, N'Leche', 80, 2)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (3, N'Refresco', 25, 3)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (4, N'Cerveza', 125, 4)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (5, N'Café', 10, 5)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (6, N'Jean', 2200, 6)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (7, N'Camisa', 1500, 7)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (8, N'Tenis', 3600, 8)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (9, N'Short deportivo', 1600, 9)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (10, N'Gorra', 900, 10)
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (1, N'Aeropostale')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (2, N'Rica')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (3, N'Coca-Cola')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (4, N'Presidente')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (5, N'Cafe Santo Domingo')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (6, N'Forever 21')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (7, N'Pull & Bear')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (8, N'Nike')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (9, N'Adiddas')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (10, N'Reebook')
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Fabricantes] FOREIGN KEY([Fabricante])
REFERENCES [dbo].[Fabricantes] ([Codigo])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Fabricantes]
GO
USE [master]
GO
ALTER DATABASE [BaseDeDatos2] SET  READ_WRITE 
GO

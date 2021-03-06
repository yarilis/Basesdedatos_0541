
/* Nombre: Lucia Montero
   Matricula: 16-SIIN-1-166
   Seccion: 0541 */

USE [master]
GO
/****** Object:  Database [TrabajoFinal1]    Script Date: 09/04/2018 18:59:21 ******/
CREATE DATABASE [TrabajoFinal1]
USE [TrabajoFinal1]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 09/04/2018 18:59:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[ClasificacionEdad] [int] NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salas]    Script Date: 09/04/2018 18:59:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Pelicula] [int] NULL,
 CONSTRAINT [PK_Salas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (1, N'Madagascar', 14)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (2, N'Titanic', 15)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (3, N'El Peon', 13)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (4, N'Harry Potter', 15)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (5, N'El Guerrero', 17)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (6, N'Jack Veneno', 5)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (7, N'Fast and Furious', 5)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (8, N'Spiderman', 14)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (9, N'El Heredeo', 16)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (10, N'El Elegido', 12)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (11, NULL, NULL)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (1, N'Sala #1', 1)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (2, N'Sala #2', 2)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (3, N'Sala #3', 3)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (4, N'Sala #4', 4)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (5, N'Sala #5', 5)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (6, N'Sala #6', 6)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (7, N'Sala #7', 7)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (8, N'Sala #8', 8)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (9, N'Sala #9', 9)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (10, N'Sala #10', 1)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (11, NULL, 11)
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [FK_Salas_Peliculas] FOREIGN KEY([Pelicula])
REFERENCES [dbo].[Peliculas] ([Codigo])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [FK_Salas_Peliculas]
GO
USE [master]
GO
ALTER DATABASE [TrabajoFinal1] SET  READ_WRITE 
GO

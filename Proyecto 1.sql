
/* Nombre: Lucia Montero
   Matricula: 16-SIIN-1-166
   Seccion: 0541 */

USE [master]
GO
/****** Object:  Database [Proyecto3]    Script Date: 09/04/2018 18:55:55 ******/
CREATE DATABASE [Proyecto3]
USE [Proyecto3]
GO
/****** Object:  Table [dbo].[DEPARTAMENTOS]    Script Date: 09/04/2018 18:55:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTAMENTOS](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Presupuesto] [int] NULL,
 CONSTRAINT [PK_DEPARTAMENTOS] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLEADOS]    Script Date: 09/04/2018 18:55:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLEADOS](
	[DNI] [varchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
	[Departamento] [int] NULL,
 CONSTRAINT [PK_EMPLEADOS] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DEPARTAMENTOS] ([Codigo], [Nombre], [Presupuesto]) VALUES (1, N'Area 1', 100000)
INSERT [dbo].[DEPARTAMENTOS] ([Codigo], [Nombre], [Presupuesto]) VALUES (2, N'Area 2', 10000)
INSERT [dbo].[DEPARTAMENTOS] ([Codigo], [Nombre], [Presupuesto]) VALUES (3, N'Area 3', 90000)
INSERT [dbo].[DEPARTAMENTOS] ([Codigo], [Nombre], [Presupuesto]) VALUES (4, N'Area 4', 60000)
INSERT [dbo].[DEPARTAMENTOS] ([Codigo], [Nombre], [Presupuesto]) VALUES (5, N'Area 5', 10000)
INSERT [dbo].[DEPARTAMENTOS] ([Codigo], [Nombre], [Presupuesto]) VALUES (6, N'Area 6', 20000)
INSERT [dbo].[DEPARTAMENTOS] ([Codigo], [Nombre], [Presupuesto]) VALUES (7, N'Area 7', 40000)
INSERT [dbo].[DEPARTAMENTOS] ([Codigo], [Nombre], [Presupuesto]) VALUES (8, N'Area 8', 80000)
INSERT [dbo].[DEPARTAMENTOS] ([Codigo], [Nombre], [Presupuesto]) VALUES (9, N'Area 9', 60000)
INSERT [dbo].[DEPARTAMENTOS] ([Codigo], [Nombre], [Presupuesto]) VALUES (10, N'Area 10', 300000)
INSERT [dbo].[EMPLEADOS] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'1', N'Hilberto', N'Pineda', 1)
INSERT [dbo].[EMPLEADOS] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'10', N'Dario', N'Pinales', 10)
INSERT [dbo].[EMPLEADOS] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'2', N'Sory', N'Castillo', 2)
INSERT [dbo].[EMPLEADOS] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'3', N'Francis', N'Mella', 3)
INSERT [dbo].[EMPLEADOS] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'4', N'Arnold', N'Peralta', 4)
INSERT [dbo].[EMPLEADOS] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'5', N'Teolvis', N'Gonzales', 5)
INSERT [dbo].[EMPLEADOS] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'6', N'Erika', N'Terrero', 6)
INSERT [dbo].[EMPLEADOS] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'7', N'Paola', N'Medina', 7)
INSERT [dbo].[EMPLEADOS] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'8', N'Miguel', N'Diaz', 8)
INSERT [dbo].[EMPLEADOS] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'9', N'Byron', N'Leon', 9)
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADOS_DEPARTAMENTOS] FOREIGN KEY([Departamento])
REFERENCES [dbo].[DEPARTAMENTOS] ([Codigo])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [FK_EMPLEADOS_DEPARTAMENTOS]
GO
USE [master]
GO
ALTER DATABASE [Proyecto3] SET  READ_WRITE 
GO

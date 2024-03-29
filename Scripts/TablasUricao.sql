USE [Uricao]
GO
/****** Object:  Table [dbo].[Privilegio]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privilegio](
	[idPrivilegio] [bigint] NOT NULL,
	[nombrePrivilegio] [nchar](10) NOT NULL,
	[numeroPrivilegio] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Privilegio] PRIMARY KEY CLUSTERED 
(
	[idPrivilegio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tratamiento]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tratamiento](
	[IdTratamiento] [bigint] NOT NULL,
	[fk_id_tratamiento] [bigint] NULL,
	[nombreTratamiento] [nchar](10) NOT NULL,
	[duracionTratamiento] [datetime] NULL,
	[descripccionTratamiento] [text] NOT NULL,
	[costoTratamiento] [real] NOT NULL,
	[imagenTratamiento] [image] NULL,
	[explicacionTratamiento] [text] NOT NULL,
 CONSTRAINT [PK_Tratamiento] PRIMARY KEY CLUSTERED 
(
	[IdTratamiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [bigint] NOT NULL,
	[nombreRol] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[idProveedor] [bigint] NOT NULL,
	[rifProveedor] [nvarchar](50) NOT NULL,
	[nombreProveedor] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[idHorario] [bigint] NOT NULL,
	[fechaHorario] [datetime] NOT NULL,
	[inicioHorario] [datetime] NOT NULL,
	[finHorario] [datetime] NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[idHorario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[IdMarca] [bigint] NOT NULL,
	[nombreMarca] [nvarchar](50) NOT NULL,
	[fkidProveedor] [bigint] NOT NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[IdMarca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diente]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diente](
	[IdDIente] [bigint] NOT NULL,
	[numeroDiente] [int] NOT NULL,
 CONSTRAINT [PK_Diente] PRIMARY KEY CLUSTERED 
(
	[IdDIente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnostico]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnostico](
	[idDiagnostico] [bigint] NOT NULL,
	[ObsvDiagnostico] [text] NOT NULL,
 CONSTRAINT [PK_Diagnostico] PRIMARY KEY CLUSTERED 
(
	[idDiagnostico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [bigint] NOT NULL,
	[nombreCategoria] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banco]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banco](
	[idBanco] [bigint] NOT NULL,
	[nombreBanco] [nvarchar](50) NOT NULL,
	[rifBanco] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Banco] PRIMARY KEY CLUSTERED 
(
	[idBanco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Antedecente]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Antedecente](
	[idAntecedente] [bigint] NOT NULL,
	[preguntaAntecedente] [text] NOT NULL,
 CONSTRAINT [PK_Antedecente] PRIMARY KEY CLUSTERED 
(
	[idAntecedente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[idContacto] [bigint] NOT NULL,
	[nombreContacto] [nvarchar](50) NOT NULL,
	[ApellidoContacto] [nvarchar](50) NOT NULL,
	[correoContacto] [nvarchar](50) NOT NULL,
	[fkidProveedor] [bigint] NOT NULL,
 CONSTRAINT [PK_Contacto] PRIMARY KEY CLUSTERED 
(
	[idContacto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [bigint] NOT NULL,
	[nombreProducto] [nvarchar](50) NOT NULL,
	[cantidaMininaInvProducto] [int] NOT NULL,
	[fkCategoria] [bigint] NULL,
	[tipoProducto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Privilegio_Rol]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privilegio_Rol](
	[idPrivilegio_Rol] [bigint] NOT NULL,
	[fkIdRol] [bigint] NOT NULL,
	[fkIdPrivilegio] [bigint] NOT NULL,
 CONSTRAINT [PK_Privilegio_Rol] PRIMARY KEY CLUSTERED 
(
	[idPrivilegio_Rol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[IdDir] [bigint] NOT NULL,
	[avenidaDir] [nvarchar](50) NOT NULL,
	[calleDir] [nvarchar](50) NOT NULL,
	[municipioDir] [nvarchar](50) NOT NULL,
	[EstadoDir] [nvarchar](50) NOT NULL,
	[fkIdProveedor] [bigint] NOT NULL,
 CONSTRAINT [PK_Direccion_1] PRIMARY KEY CLUSTERED 
(
	[IdDir] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [bigint] NOT NULL,
	[loginUser] [nchar](10) NOT NULL,
	[passwordUser] [nchar](10) NOT NULL,
	[tipoidUser] [nchar](10) NOT NULL,
	[cedulaUser] [nvarchar](50) NOT NULL,
	[nombreUser1] [nchar](10) NOT NULL,
	[nombreUser2] [nchar](10) NULL,
	[apellidoUser1] [nchar](10) NOT NULL,
	[apellidoUser2] [nchar](10) NULL,
	[nacimientoUser] [date] NOT NULL,
	[ingresoUser] [real] NULL,
	[generoUser] [nchar](10) NOT NULL,
	[telefonoUser] [nchar](10) NOT NULL,
	[correoUser] [nchar](10) NOT NULL,
	[ocupacionUser] [nvarchar](10) NOT NULL,
	[fkIdRepresentante] [bigint] NULL,
	[fkidDireccion] [bigint] NOT NULL,
	[fotoUser] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tratamiento_Producto]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tratamiento_Producto](
	[idtratProd] [bigint] NOT NULL,
	[fkProducto] [bigint] NOT NULL,
	[fkTratamiento] [bigint] NOT NULL,
	[prioridad_trat_prod] [int] NOT NULL,
	[cantidad_trat_prod] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Tratamiento_Producto] PRIMARY KEY CLUSTERED 
(
	[idtratProd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Producto]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Producto](
	[idDet_Prod] [bigint] NOT NULL,
	[precioDet_Pro] [real] NOT NULL,
	[calidadDet_Pro] [nvarchar](50) NOT NULL,
	[fkMarca] [bigint] NOT NULL,
	[fkProducto] [bigint] NOT NULL,
 CONSTRAINT [PK_Detalle_Producto] PRIMARY KEY CLUSTERED 
(
	[idDet_Prod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta_Bancaria]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta_Bancaria](
	[iDCuenta] [bigint] NOT NULL,
	[numeroCuenta] [nvarchar](50) NOT NULL,
	[fkIdProveedor] [bigint] NULL,
	[fkIdBanco] [bigint] NOT NULL,
	[tipoCuenta] [nvarchar](50) NOT NULL,
	[tipoUso] [nvarchar](50) NOT NULL,
	[fkIdUsuario] [bigint] NULL,
 CONSTRAINT [PK_Cuenta_Bancaria] PRIMARY KEY CLUSTERED 
(
	[iDCuenta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuentaPorCobrar]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuentaPorCobrar](
	[idCuentaPC] [bigint] NOT NULL,
	[estadoCuentaPC] [nchar](10) NOT NULL,
	[fkidUsuario] [bigint] NOT NULL,
 CONSTRAINT [PK_CuentaPorCobrar] PRIMARY KEY CLUSTERED 
(
	[idCuentaPC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Histora_Base]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Histora_Base](
	[IdHistoia_Base] [bigint] NOT NULL,
	[fechaHistoria_Base] [date] NOT NULL,
	[fkIdUsuario] [bigint] NULL,
	[observacionHistoria_Base] [text] NOT NULL,
 CONSTRAINT [PK_Histora_Base] PRIMARY KEY CLUSTERED 
(
	[IdHistoia_Base] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[IdFactura] [bigint] NOT NULL,
	[fkidUsuario] [bigint] NOT NULL,
	[nombreRazonsocialFactura] [nchar](10) NULL,
	[tipo_identificacionFactura] [nchar](10) NULL,
	[cedulaRifFactura] [nvarchar](50) NULL,
	[fechaFactura] [date] NOT NULL,
	[horaFactura] [datetime] NULL,
	[totalFactura] [real] NULL,
	[fkIdTratamiento] [bigint] NULL,
	[pagadoFactura] [real] NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lote]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lote](
	[idLote] [bigint] NOT NULL,
	[fechaIngresoLote] [date] NOT NULL,
	[fechaVencimienLote] [date] NOT NULL,
	[cantidadLote] [bigint] NOT NULL,
	[ubicacionLote] [nvarchar](max) NULL,
	[fkidDet_Pro] [bigint] NOT NULL,
 CONSTRAINT [PK_Lote] PRIMARY KEY CLUSTERED 
(
	[idLote] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefono]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono](
	[IdTelefono] [bigint] NOT NULL,
	[codigoTelefono] [nchar](10) NULL,
	[numeroTelefono] [nchar](10) NOT NULL,
	[tipoTelefono] [nchar](10) NOT NULL,
	[fkIdUsuario] [bigint] NOT NULL,
	[fkIdProveedor] [bigint] NOT NULL,
	[fkIdContacto] [bigint] NOT NULL,
 CONSTRAINT [PK_Telefono] PRIMARY KEY CLUSTERED 
(
	[IdTelefono] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Rol]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Rol](
	[idUsuario_Rol] [nchar](10) NOT NULL,
	[fkidUsuario] [bigint] NULL,
	[fkidRol] [bigint] NULL,
 CONSTRAINT [PK_Usuario_Rol] PRIMARY KEY CLUSTERED 
(
	[idUsuario_Rol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cita]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cita](
	[idCita] [bigint] NOT NULL,
	[fechaCita] [date] NOT NULL,
	[horaInicioCita] [datetime] NOT NULL,
	[horaFinCita] [nchar](10) NOT NULL,
	[fkIdTratamiento] [bigint] NULL,
	[fkIdUsuario] [bigint] NOT NULL,
	[fkidHorario] [bigint] NULL,
 CONSTRAINT [PK_Cita] PRIMARY KEY CLUSTERED 
(
	[idCita] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presupuesto]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presupuesto](
	[IdPresupuesto] [bigint] NOT NULL,
	[fkIdUsuario] [bigint] NOT NULL,
	[fechaPresupuesto] [date] NOT NULL,
	[totalPresupuesto] [real] NOT NULL,
	[ObservacionesPresupuesto] [text] NULL,
 CONSTRAINT [PK_Presupuesto] PRIMARY KEY CLUSTERED 
(
	[IdPresupuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Per_Hor]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Per_Hor](
	[idPer_Hor] [bigint] NOT NULL,
	[fkIdUsuario] [bigint] NULL,
	[fkIdHorario] [bigint] NULL,
 CONSTRAINT [PK_Per_Hor] PRIMARY KEY CLUSTERED 
(
	[idPer_Hor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tratamiento_Historia]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tratamiento_Historia](
	[fkTratamiento] [bigint] NULL,
	[fkHistoria_Base] [bigint] NULL,
	[Id_trat_hist] [bigint] NOT NULL,
 CONSTRAINT [PK_Tratamiento_Historia] PRIMARY KEY CLUSTERED 
(
	[Id_trat_hist] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle](
	[idDetalle] [bigint] NOT NULL,
	[fkidUsuario] [bigint] NULL,
	[cantidadDetalle] [int] NOT NULL,
	[montoDetalle] [real] NOT NULL,
	[fkIdPresupuesto] [bigint] NULL,
	[fkIdFactura] [bigint] NULL,
 CONSTRAINT [PK_Detalle] PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta_Por_Pagar]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta_Por_Pagar](
	[idCuentaPP] [bigint] NOT NULL,
	[fechaEmisionPP] [date] NULL,
	[fechaVencimientoPP] [date] NULL,
	[tipoPagoPP] [nchar](10) NULL,
	[estatusPP] [nchar](10) NULL,
	[tipoDeudaPP] [nchar](10) NULL,
	[detallePP] [text] NULL,
	[montoPP] [real] NULL,
	[fkCuentaBancaria] [bigint] NOT NULL,
 CONSTRAINT [PK_Cuenta_Por_Pagar] PRIMARY KEY CLUSTERED 
(
	[idCuentaPP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consumo]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consumo](
	[IdConsumo] [bigint] NOT NULL,
	[fechaConsumo] [date] NOT NULL,
	[fkidlote] [bigint] NOT NULL,
	[cantidadCosumo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Consumo] PRIMARY KEY CLUSTERED 
(
	[IdConsumo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ANT_HIS]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANT_HIS](
	[IdAnt_His] [nchar](10) NOT NULL,
	[respuestaAntHis] [nvarchar](max) NOT NULL,
	[fkAntecedente] [bigint] NULL,
	[fkHistoria_Base] [bigint] NULL,
 CONSTRAINT [PK_ANT_HIS] PRIMARY KEY CLUSTERED 
(
	[IdAnt_His] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abono]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abono](
	[IdAbono] [bigint] NOT NULL,
	[fechaAbono] [date] NOT NULL,
	[montoAbono] [real] NOT NULL,
	[fkIdFactura] [bigint] NOT NULL,
	[fkIdCuentaPP] [bigint] NULL,
	[fkIdCuentaPC] [bigint] NULL,
 CONSTRAINT [PK_Abono] PRIMARY KEY CLUSTERED 
(
	[IdAbono] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secuencia_Tratamiento]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secuencia_Tratamiento](
	[idSecuTrat] [bigint] NOT NULL,
	[fk_HistoriaBase] [bigint] NOT NULL,
	[fechaSecuTrat] [date] NOT NULL,
	[fkIdUsuario] [bigint] NOT NULL,
 CONSTRAINT [PK_Secuencia_Tratamiento] PRIMARY KEY CLUSTERED 
(
	[idSecuTrat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sec_Tra]    Script Date: 11/21/2012 13:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sec_Tra](
	[idSec_Tra] [bigint] NOT NULL,
	[fkIdTratamiento] [bigint] NOT NULL,
	[fkIdDiagnostico] [bigint] NOT NULL,
	[fkIdDiente] [bigint] NOT NULL,
	[fkIdSecuTrat] [bigint] NOT NULL,
	[observacionSec_Tra] [text] NOT NULL,
 CONSTRAINT [PK_Sec_Tra] PRIMARY KEY CLUSTERED 
(
	[idSec_Tra] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Tratamiento_Tratamiento]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Tratamiento]  WITH CHECK ADD  CONSTRAINT [FK_Tratamiento_Tratamiento] FOREIGN KEY([IdTratamiento])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Tratamiento] CHECK CONSTRAINT [FK_Tratamiento_Tratamiento]
GO
/****** Object:  ForeignKey [FK_Contacto_Proveedor]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD  CONSTRAINT [FK_Contacto_Proveedor] FOREIGN KEY([fkidProveedor])
REFERENCES [dbo].[Proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[Contacto] CHECK CONSTRAINT [FK_Contacto_Proveedor]
GO
/****** Object:  ForeignKey [FK_Producto_Categoria]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([fkCategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
/****** Object:  ForeignKey [FK_Privilegio_Rol_Privilegio]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Privilegio_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Privilegio_Rol_Privilegio] FOREIGN KEY([fkIdPrivilegio])
REFERENCES [dbo].[Privilegio] ([idPrivilegio])
GO
ALTER TABLE [dbo].[Privilegio_Rol] CHECK CONSTRAINT [FK_Privilegio_Rol_Privilegio]
GO
/****** Object:  ForeignKey [FK_Privilegio_Rol_Rol]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Privilegio_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Privilegio_Rol_Rol] FOREIGN KEY([fkIdRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Privilegio_Rol] CHECK CONSTRAINT [FK_Privilegio_Rol_Rol]
GO
/****** Object:  ForeignKey [FK_Direccion_Proveedor]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Proveedor] FOREIGN KEY([fkIdProveedor])
REFERENCES [dbo].[Proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_Proveedor]
GO
/****** Object:  ForeignKey [fkIdRepresentante]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [fkIdRepresentante] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [fkIdRepresentante]
GO
/****** Object:  ForeignKey [fkidUsuarioDireccion]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [fkidUsuarioDireccion] FOREIGN KEY([fkidDireccion])
REFERENCES [dbo].[Direccion] ([IdDir])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [fkidUsuarioDireccion]
GO
/****** Object:  ForeignKey [FK_Tratamiento_Producto_Producto]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Tratamiento_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Tratamiento_Producto_Producto] FOREIGN KEY([fkProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[Tratamiento_Producto] CHECK CONSTRAINT [FK_Tratamiento_Producto_Producto]
GO
/****** Object:  ForeignKey [FK_Tratamiento_Producto_Tratamiento1]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Tratamiento_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Tratamiento_Producto_Tratamiento1] FOREIGN KEY([fkTratamiento])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Tratamiento_Producto] CHECK CONSTRAINT [FK_Tratamiento_Producto_Tratamiento1]
GO
/****** Object:  ForeignKey [FK_Detalle_Producto_Marca]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Detalle_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Producto_Marca] FOREIGN KEY([fkMarca])
REFERENCES [dbo].[Marca] ([IdMarca])
GO
ALTER TABLE [dbo].[Detalle_Producto] CHECK CONSTRAINT [FK_Detalle_Producto_Marca]
GO
/****** Object:  ForeignKey [FK_Detalle_Producto_Producto]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Detalle_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Producto_Producto] FOREIGN KEY([fkProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[Detalle_Producto] CHECK CONSTRAINT [FK_Detalle_Producto_Producto]
GO
/****** Object:  ForeignKey [FK_Cuenta_Bancaria_Banco]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Cuenta_Bancaria]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Bancaria_Banco] FOREIGN KEY([fkIdBanco])
REFERENCES [dbo].[Banco] ([idBanco])
GO
ALTER TABLE [dbo].[Cuenta_Bancaria] CHECK CONSTRAINT [FK_Cuenta_Bancaria_Banco]
GO
/****** Object:  ForeignKey [FK_Cuenta_Bancaria_Proveedor]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Cuenta_Bancaria]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Bancaria_Proveedor] FOREIGN KEY([fkIdProveedor])
REFERENCES [dbo].[Proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[Cuenta_Bancaria] CHECK CONSTRAINT [FK_Cuenta_Bancaria_Proveedor]
GO
/****** Object:  ForeignKey [FK_Cuenta_Bancaria_Usuario]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Cuenta_Bancaria]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Bancaria_Usuario] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Cuenta_Bancaria] CHECK CONSTRAINT [FK_Cuenta_Bancaria_Usuario]
GO
/****** Object:  ForeignKey [FK_CuentaPorCobrar_Usuario]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[CuentaPorCobrar]  WITH CHECK ADD  CONSTRAINT [FK_CuentaPorCobrar_Usuario] FOREIGN KEY([fkidUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[CuentaPorCobrar] CHECK CONSTRAINT [FK_CuentaPorCobrar_Usuario]
GO
/****** Object:  ForeignKey [FK_Histora_Base_Usuario]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Histora_Base]  WITH CHECK ADD  CONSTRAINT [FK_Histora_Base_Usuario] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Histora_Base] CHECK CONSTRAINT [FK_Histora_Base_Usuario]
GO
/****** Object:  ForeignKey [FK_Factura_Tratamiento]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Tratamiento] FOREIGN KEY([fkIdTratamiento])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Tratamiento]
GO
/****** Object:  ForeignKey [FK_Factura_Usuario]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Usuario] FOREIGN KEY([fkidUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Usuario]
GO
/****** Object:  ForeignKey [FK_Lote_Detalle_Producto]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Lote]  WITH CHECK ADD  CONSTRAINT [FK_Lote_Detalle_Producto] FOREIGN KEY([fkidDet_Pro])
REFERENCES [dbo].[Detalle_Producto] ([idDet_Prod])
GO
ALTER TABLE [dbo].[Lote] CHECK CONSTRAINT [FK_Lote_Detalle_Producto]
GO
/****** Object:  ForeignKey [FK_Telefono_Contacto]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Telefono]  WITH CHECK ADD  CONSTRAINT [FK_Telefono_Contacto] FOREIGN KEY([fkIdContacto])
REFERENCES [dbo].[Contacto] ([idContacto])
GO
ALTER TABLE [dbo].[Telefono] CHECK CONSTRAINT [FK_Telefono_Contacto]
GO
/****** Object:  ForeignKey [FK_Telefono_Proveedor]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Telefono]  WITH CHECK ADD  CONSTRAINT [FK_Telefono_Proveedor] FOREIGN KEY([fkIdProveedor])
REFERENCES [dbo].[Proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[Telefono] CHECK CONSTRAINT [FK_Telefono_Proveedor]
GO
/****** Object:  ForeignKey [FK_Telefono_Usuario]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Telefono]  WITH CHECK ADD  CONSTRAINT [FK_Telefono_Usuario] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Telefono] CHECK CONSTRAINT [FK_Telefono_Usuario]
GO
/****** Object:  ForeignKey [FK_Usuario_Rol_Rol]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Usuario_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol_Rol] FOREIGN KEY([fkidRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Usuario_Rol] CHECK CONSTRAINT [FK_Usuario_Rol_Rol]
GO
/****** Object:  ForeignKey [FK_Usuario_Rol_Usuario]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Usuario_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol_Usuario] FOREIGN KEY([fkidUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Usuario_Rol] CHECK CONSTRAINT [FK_Usuario_Rol_Usuario]
GO
/****** Object:  ForeignKey [fkidHorario]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [fkidHorario] FOREIGN KEY([fkidHorario])
REFERENCES [dbo].[Horario] ([idHorario])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [fkidHorario]
GO
/****** Object:  ForeignKey [fkidTratamiento]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [fkidTratamiento] FOREIGN KEY([fkIdTratamiento])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [fkidTratamiento]
GO
/****** Object:  ForeignKey [fkIdUsuarioCita]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [fkIdUsuarioCita] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [fkIdUsuarioCita]
GO
/****** Object:  ForeignKey [FK_Presupuesto_Usuario]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_Presupuesto_Usuario] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_Presupuesto_Usuario]
GO
/****** Object:  ForeignKey [FK_Per_Hor_Horario]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Per_Hor]  WITH CHECK ADD  CONSTRAINT [FK_Per_Hor_Horario] FOREIGN KEY([fkIdHorario])
REFERENCES [dbo].[Horario] ([idHorario])
GO
ALTER TABLE [dbo].[Per_Hor] CHECK CONSTRAINT [FK_Per_Hor_Horario]
GO
/****** Object:  ForeignKey [FK_Per_Hor_Usuario]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Per_Hor]  WITH CHECK ADD  CONSTRAINT [FK_Per_Hor_Usuario] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Per_Hor] CHECK CONSTRAINT [FK_Per_Hor_Usuario]
GO
/****** Object:  ForeignKey [FK_Tratamiento_Historia_Histora_Base]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Tratamiento_Historia]  WITH CHECK ADD  CONSTRAINT [FK_Tratamiento_Historia_Histora_Base] FOREIGN KEY([fkHistoria_Base])
REFERENCES [dbo].[Histora_Base] ([IdHistoia_Base])
GO
ALTER TABLE [dbo].[Tratamiento_Historia] CHECK CONSTRAINT [FK_Tratamiento_Historia_Histora_Base]
GO
/****** Object:  ForeignKey [FK_Tratamiento_Historia_Tratamiento]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Tratamiento_Historia]  WITH CHECK ADD  CONSTRAINT [FK_Tratamiento_Historia_Tratamiento] FOREIGN KEY([fkTratamiento])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Tratamiento_Historia] CHECK CONSTRAINT [FK_Tratamiento_Historia_Tratamiento]
GO
/****** Object:  ForeignKey [FK_Detalle_Factura]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Factura] FOREIGN KEY([fkIdFactura])
REFERENCES [dbo].[Factura] ([IdFactura])
GO
ALTER TABLE [dbo].[Detalle] CHECK CONSTRAINT [FK_Detalle_Factura]
GO
/****** Object:  ForeignKey [FK_Detalle_Presupuesto]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Presupuesto] FOREIGN KEY([fkIdPresupuesto])
REFERENCES [dbo].[Presupuesto] ([IdPresupuesto])
GO
ALTER TABLE [dbo].[Detalle] CHECK CONSTRAINT [FK_Detalle_Presupuesto]
GO
/****** Object:  ForeignKey [FK_Cuenta_Por_Pagar_Cuenta_Bancaria]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Cuenta_Por_Pagar]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Por_Pagar_Cuenta_Bancaria] FOREIGN KEY([fkCuentaBancaria])
REFERENCES [dbo].[Cuenta_Bancaria] ([iDCuenta])
GO
ALTER TABLE [dbo].[Cuenta_Por_Pagar] CHECK CONSTRAINT [FK_Cuenta_Por_Pagar_Cuenta_Bancaria]
GO
/****** Object:  ForeignKey [FK_Consumo_Lote]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Consumo]  WITH CHECK ADD  CONSTRAINT [FK_Consumo_Lote] FOREIGN KEY([fkidlote])
REFERENCES [dbo].[Lote] ([idLote])
GO
ALTER TABLE [dbo].[Consumo] CHECK CONSTRAINT [FK_Consumo_Lote]
GO
/****** Object:  ForeignKey [FK_ANT_HIS_Antedecente1]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[ANT_HIS]  WITH CHECK ADD  CONSTRAINT [FK_ANT_HIS_Antedecente1] FOREIGN KEY([fkAntecedente])
REFERENCES [dbo].[Antedecente] ([idAntecedente])
GO
ALTER TABLE [dbo].[ANT_HIS] CHECK CONSTRAINT [FK_ANT_HIS_Antedecente1]
GO
/****** Object:  ForeignKey [FK_ANT_HIS_Histora_Base]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[ANT_HIS]  WITH CHECK ADD  CONSTRAINT [FK_ANT_HIS_Histora_Base] FOREIGN KEY([fkHistoria_Base])
REFERENCES [dbo].[Histora_Base] ([IdHistoia_Base])
GO
ALTER TABLE [dbo].[ANT_HIS] CHECK CONSTRAINT [FK_ANT_HIS_Histora_Base]
GO
/****** Object:  ForeignKey [FK_Abono_Cuenta_Por_Pagar]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Abono]  WITH CHECK ADD  CONSTRAINT [FK_Abono_Cuenta_Por_Pagar] FOREIGN KEY([fkIdCuentaPP])
REFERENCES [dbo].[Cuenta_Por_Pagar] ([idCuentaPP])
GO
ALTER TABLE [dbo].[Abono] CHECK CONSTRAINT [FK_Abono_Cuenta_Por_Pagar]
GO
/****** Object:  ForeignKey [FK_Abono_CuentaPorCobrar]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Abono]  WITH CHECK ADD  CONSTRAINT [FK_Abono_CuentaPorCobrar] FOREIGN KEY([fkIdCuentaPC])
REFERENCES [dbo].[CuentaPorCobrar] ([idCuentaPC])
GO
ALTER TABLE [dbo].[Abono] CHECK CONSTRAINT [FK_Abono_CuentaPorCobrar]
GO
/****** Object:  ForeignKey [FK_Abono_Factura]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Abono]  WITH CHECK ADD  CONSTRAINT [FK_Abono_Factura] FOREIGN KEY([fkIdFactura])
REFERENCES [dbo].[Factura] ([IdFactura])
GO
ALTER TABLE [dbo].[Abono] CHECK CONSTRAINT [FK_Abono_Factura]
GO
/****** Object:  ForeignKey [FK_Secuencia_Tratamiento_Tratamiento_Historia]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Secuencia_Tratamiento]  WITH CHECK ADD  CONSTRAINT [FK_Secuencia_Tratamiento_Tratamiento_Historia] FOREIGN KEY([fk_HistoriaBase])
REFERENCES [dbo].[Tratamiento_Historia] ([Id_trat_hist])
GO
ALTER TABLE [dbo].[Secuencia_Tratamiento] CHECK CONSTRAINT [FK_Secuencia_Tratamiento_Tratamiento_Historia]
GO
/****** Object:  ForeignKey [FK_Secuencia_Tratamiento_Usuario]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Secuencia_Tratamiento]  WITH CHECK ADD  CONSTRAINT [FK_Secuencia_Tratamiento_Usuario] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Secuencia_Tratamiento] CHECK CONSTRAINT [FK_Secuencia_Tratamiento_Usuario]
GO
/****** Object:  ForeignKey [FK_Sec_Tra_Diagnostico]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Sec_Tra]  WITH CHECK ADD  CONSTRAINT [FK_Sec_Tra_Diagnostico] FOREIGN KEY([fkIdDiagnostico])
REFERENCES [dbo].[Diagnostico] ([idDiagnostico])
GO
ALTER TABLE [dbo].[Sec_Tra] CHECK CONSTRAINT [FK_Sec_Tra_Diagnostico]
GO
/****** Object:  ForeignKey [FK_Sec_Tra_Diente]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Sec_Tra]  WITH CHECK ADD  CONSTRAINT [FK_Sec_Tra_Diente] FOREIGN KEY([fkIdDiente])
REFERENCES [dbo].[Diente] ([IdDIente])
GO
ALTER TABLE [dbo].[Sec_Tra] CHECK CONSTRAINT [FK_Sec_Tra_Diente]
GO
/****** Object:  ForeignKey [FK_Sec_Tra_Secuencia_Tratamiento]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Sec_Tra]  WITH CHECK ADD  CONSTRAINT [FK_Sec_Tra_Secuencia_Tratamiento] FOREIGN KEY([fkIdSecuTrat])
REFERENCES [dbo].[Secuencia_Tratamiento] ([idSecuTrat])
GO
ALTER TABLE [dbo].[Sec_Tra] CHECK CONSTRAINT [FK_Sec_Tra_Secuencia_Tratamiento]
GO
/****** Object:  ForeignKey [FK_Sec_Tra_Tratamiento]    Script Date: 11/21/2012 13:39:49 ******/
ALTER TABLE [dbo].[Sec_Tra]  WITH CHECK ADD  CONSTRAINT [FK_Sec_Tra_Tratamiento] FOREIGN KEY([fkIdTratamiento])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Sec_Tra] CHECK CONSTRAINT [FK_Sec_Tra_Tratamiento]
GO

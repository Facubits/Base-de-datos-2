CREATE DATABASE parcial_sis_fact;
CREATE DATABASE parcial_plan_tienda;

-- Usar la bd de facturacion
USE parcial_sis_fact;

-- Crear tabla PROVEEDOR
CREATE TABLE PROVEEDOR (
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    activo BOOLEAN,
    pais VARCHAR(50)
);

-- Crear tabla CATEGORIA
CREATE TABLE CATEGORIA (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT,
    vigente BOOLEAN,
    slug VARCHAR(100) UNIQUE
);

-- Crear tabla PRODUCTO
CREATE TABLE PRODUCTO (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10,2),
    stock INT,
    fecha_creacion DATE,
    activo BOOLEAN,
    codigo_unico VARCHAR(100) UNIQUE,
    id_proveedor INT,
    FOREIGN KEY (id_proveedor) REFERENCES PROVEEDOR(id_proveedor)
);

-- Crear tabla CATEGORIA_PRODUCTO (tabla intermedia)
CREATE TABLE CATEGORIA_PRODUCTO (
    id_categoria INT,
    id_producto INT,
    fecha_asignacion DATE,
    PRIMARY KEY (id_categoria, id_producto),
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria),
    FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto)
);

-- Usar la db de tienda
USE parcial_plan_tienda;

-- Crear tabla TIENDA
CREATE TABLE TIENDA (
    id_tienda INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    ubicacion VARCHAR(150),
    abierta BOOLEAN,
    codigo_unico VARCHAR(100) UNIQUE
);

-- Crear tabla CARGO
CREATE TABLE CARGO (
    id_cargo INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    salario_base DECIMAL(10,2),
    nivel VARCHAR(50) UNIQUE,
    vigente BOOLEAN
);

-- Crear tabla EMPLEADO
CREATE TABLE EMPLEADO (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    fecha_ingreso DATE,
    activo BOOLEAN,
    tipo_lista VARCHAR(50),
    id_cargo INT,
    FOREIGN KEY (id_cargo) REFERENCES CARGO(id_cargo)
);

-- Crear tabla NOMINA
CREATE TABLE NOMINA (
    id_nomina INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT,
    id_tienda INT,
    periodo_inicio DATE,
    periodo_fin DATE,
    total_devengado DECIMAL(10,2),
    pagado BOOLEAN,
    medio_pago VARCHAR(50),
    FOREIGN KEY (id_empleado) REFERENCES EMPLEADO(id_empleado),
    FOREIGN KEY (id_tienda) REFERENCES TIENDA(id_tienda)
);


--creamos la bd de seguridad
CREATE DATABASE zero_security_360;

USE zero_security_360;

-- Tabla USUARIO
CREATE TABLE USUARIO (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    nombre_usuario VARCHAR(100) UNIQUE,
    token VARCHAR(255),
    contrasena VARCHAR(255),
    ciudad VARCHAR(100),
    sexo VARCHAR(10),
    estado_civil VARCHAR(20),
    tipo_empresa VARCHAR(50),
    direccion VARCHAR(150),
    tipo_usuario VARCHAR(50),
    activo BOOLEAN,
    fecha_registro DATE
);

-- Tabla LOGIN
CREATE TABLE LOGIN (
    id_login INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    agente_usuario VARCHAR(150),
    fecha_login DATE,
    token VARCHAR(255),
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

-- Tabla TIPO_PRUEBA
CREATE TABLE TIPO_PRUEBA (
    id_tipo_prueba INT PRIMARY KEY AUTO_INCREMENT,
    referencia VARCHAR(100) UNIQUE,
    nombre VARCHAR(100),
    descripcion TEXT,
    fecha_ingreso DATE,
    estado BOOLEAN,
    categoria VARCHAR(100),
    nivel_riesgo VARCHAR(50)
);

-- Tabla PAGO
CREATE TABLE PAGO (
    id_pago INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    monto DECIMAL(10,2),
    fecha_pago DATE,
    metodo_pago VARCHAR(50),
    confirmado BOOLEAN,
    referencia_pago VARCHAR(100) UNIQUE,
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

-- Tabla INFORME (tabla adicional propuesta)
CREATE TABLE INFORME (
    id_informe INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_tipo_prueba INT,
    fecha_informe DATE,
    resultado TEXT,
    estado_informe VARCHAR(50),
    aprobado BOOLEAN,
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
    FOREIGN KEY (id_tipo_prueba) REFERENCES TIPO_PRUEBA(id_tipo_prueba)
);

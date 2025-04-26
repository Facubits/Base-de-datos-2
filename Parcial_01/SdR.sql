-- Crear tabla Establecimiento
CREATE TABLE Establecimiento (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Ubicacion VARCHAR(150) NOT NULL,
    NumeroCanchas INT NOT NULL,
    Dueño VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20),
    Capacidad INT,
    Tipo ENUM('Club Deportivo', 'Complejo Público', 'Privado') DEFAULT 'Club Deportivo', -- LISTA
    Activo BOOLEAN DEFAULT TRUE, -- SI/NO
    CodigoEstablecimiento VARCHAR(50) UNIQUE -- ÚNICA
);

-- Crear tabla Cancha
CREATE TABLE Cancha (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Tarifa DECIMAL(10,2) NOT NULL,
    Capacidad INT NOT NULL,
    EstablecimientoID INT NOT NULL,
    TipoSuperficie ENUM('Césped', 'Sintético', 'Parquet') DEFAULT 'Césped', -- LISTA
    Techada BOOLEAN DEFAULT FALSE, -- SI/NO
    CodigoCancha VARCHAR(50) UNIQUE, -- ÚNICA
    FOREIGN KEY (EstablecimientoID) REFERENCES Establecimiento(ID)
);

-- Crear tabla Deporte
CREATE TABLE Deporte (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Tipo VARCHAR(50),
    Imagen VARCHAR(255),
    Icono VARCHAR(255),
    Clasificacion VARCHAR(50),
    CanchaID INT,
    Popularidad ENUM('Alta', 'Media', 'Baja') DEFAULT 'Media', -- LISTA
    Competitivo BOOLEAN DEFAULT FALSE, -- SI/NO
    CodigoDeporte VARCHAR(50) UNIQUE, -- ÚNICA
    FOREIGN KEY (CanchaID) REFERENCES Cancha(ID)
);

-- Crear tabla Usuario
CREATE TABLE Usuario (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Contraseña VARCHAR(255) NOT NULL,
    Estado VARCHAR(20),
    Perfil ENUM('Cliente', 'Administrador', 'Dueño') DEFAULT 'Cliente', -- LISTA
    Correo VARCHAR(100) UNIQUE,
    UltimoIngreso DATETIME,
    EsDueño BOOLEAN DEFAULT FALSE, -- SI/NO
    CodigoUsuario VARCHAR(50) UNIQUE -- ÚNICA
);

-- Crear tabla DeporteFavorito
CREATE TABLE DeporteFavorito (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    DeporteID INT NOT NULL,
    UsuarioID INT NOT NULL,
    Descripcion VARCHAR(255),
    NivelAmor ENUM('Bajo', 'Medio', 'Alto') DEFAULT 'Alto', -- LISTA
    PracticaFrecuente BOOLEAN DEFAULT TRUE, -- SI/NO
    CodigoFavorito VARCHAR(50) UNIQUE, -- ÚNICA
    FOREIGN KEY (DeporteID) REFERENCES Deporte(ID),
    FOREIGN KEY (UsuarioID) REFERENCES Usuario(ID)
);

-- Crear tabla FormaPago
CREATE TABLE FormaPago (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    UsuarioID INT NOT NULL,
    EstablecimientoID INT NOT NULL,
    CanchaID INT NOT NULL,
    MetodoPago ENUM('Tarjeta', 'Efectivo', 'Transferencia') DEFAULT 'Tarjeta', -- LISTA
    PagoRealizado BOOLEAN DEFAULT FALSE, -- SI/NO
    CodigoPago VARCHAR(50) UNIQUE, -- ÚNICA
    FOREIGN KEY (UsuarioID) REFERENCES Usuario(ID),
    FOREIGN KEY (EstablecimientoID) REFERENCES Establecimiento(ID),
    FOREIGN KEY (CanchaID) REFERENCES Cancha(ID)
);

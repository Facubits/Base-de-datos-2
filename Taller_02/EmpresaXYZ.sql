-- Tabla de Perfiles
CREATE TABLE Perfil (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    FechaVigencia DATE,
    Descripcion VARCHAR(255),
    Encargado VARCHAR(100)
);

-- Tabla de Usuarios
CREATE TABLE Usuario (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Estado ENUM('Activo', 'Inactivo') DEFAULT 'Activo',
    Contraseña VARCHAR(255) NOT NULL,
    Cargo VARCHAR(100),
    Salario DECIMAL(10,2),
    FechaIngreso DATE,
    PerfilID INT,
    FOREIGN KEY (PerfilID) REFERENCES Perfil(ID)
);

-- Tabla de Login (registro de inicios de sesión)
CREATE TABLE Login (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    UsuarioID INT,
    FechaHora DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UsuarioID) REFERENCES Usuario(ID)
);

-- Tabla de Fidelización
CREATE TABLE Fidelizacion (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    UsuarioID INT,
    Actividad VARCHAR(255),
    Fecha DATE,
    Puntos INT,
    FOREIGN KEY (UsuarioID) REFERENCES Usuario(ID)
);


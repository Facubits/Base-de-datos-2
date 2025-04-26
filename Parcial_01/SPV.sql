-- Crear tabla Producto
CREATE TABLE Producto (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL,
    Categoria ENUM('Alimentos', 'Electrónica', 'Ropa') DEFAULT 'Alimentos', -- LISTA
    Activo BOOLEAN DEFAULT TRUE, -- SI/NO
    CodigoSKU VARCHAR(50) UNIQUE -- ÚNICA
);

-- Crear tabla Cliente
CREATE TABLE Cliente (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20),
    Email VARCHAR(100),
    TipoCliente ENUM('Regular', 'Premium', 'VIP') DEFAULT 'Regular', -- LISTA
    Suscrito BOOLEAN DEFAULT TRUE, -- SI/NO
    DNI VARCHAR(20) UNIQUE -- ÚNICA
);

-- Crear tabla Empleado
CREATE TABLE Empleado (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    Turno ENUM('Mañana', 'Tarde', 'Noche') DEFAULT 'Mañana', -- LISTA
    Activo BOOLEAN DEFAULT TRUE, -- SI/NO
    NumeroEmpleado VARCHAR(20) UNIQUE -- ÚNICA
);

-- Crear tabla Venta
CREATE TABLE Venta (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATETIME NOT NULL,
    ClienteID INT,
    EmpleadoID INT,
    TipoPago ENUM('Efectivo', 'Tarjeta', 'Transferencia') DEFAULT 'Efectivo', -- LISTA
    Facturada BOOLEAN DEFAULT FALSE, -- SI/NO
    CodigoFactura VARCHAR(30) UNIQUE, -- ÚNICA
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ID),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleado(ID)
);

-- Crear tabla DetalleVenta
CREATE TABLE DetalleVenta (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    VentaID INT,
    ProductoID INT,
    Cantidad INT,
    PrecioUnitario DECIMAL(10,2),
    EstadoDetalle ENUM('Pendiente', 'Entregado', 'Cancelado') DEFAULT 'Pendiente', -- LISTA
    DescuentoAplicado BOOLEAN DEFAULT FALSE, -- SI/NO
    CodigoDetalle VARCHAR(30) UNIQUE, -- ÚNICA
    FOREIGN KEY (VentaID) REFERENCES Venta(ID),
    FOREIGN KEY (ProductoID) REFERENCES Producto(ID)
);

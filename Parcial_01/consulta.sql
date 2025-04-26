-- Insertar Productos
INSERT INTO Producto (Nombre, Precio, Stock, Categoria, Activo, CodigoSKU)
VALUES 
('Laptop Dell Inspiron 15', 850.99, 10, 'Electrónica', TRUE, 'SKU-1001'),
('Camiseta Nike Dry-Fit', 29.99, 50, 'Ropa', TRUE, 'SKU-1002'),
('Smartphone Samsung Galaxy A32', 299.99, 20, 'Electrónica', TRUE, 'SKU-1003'),
('Cereal Kellogg''s Corn Flakes', 5.50, 100, 'Alimentos', TRUE, 'SKU-1004'),
('Zapatos Adidas Running', 79.99, 30, 'Ropa', TRUE, 'SKU-1005');

-- Insertar clientes
INSERT INTO Cliente (Nombre, Telefono, Email, TipoCliente, Suscrito, DNI)
VALUES 
('Carlos Martínez', '+507 6201-2345', 'cmartinez@email.com', 'Regular', TRUE, '8-123-456'),
('María González', '+507 6234-5678', 'mgonzalez@email.com', 'VIP', TRUE, '8-234-567'),
('Luis Fernández', '+507 6345-7890', 'lfernandez@email.com', 'Premium', TRUE, '8-345-678'),
('Ana Torres', '+507 6456-8901', 'atorres@email.com', 'Regular', FALSE, '8-456-789'),
('José Castillo', '+507 6567-9012', 'jcastillo@email.com', 'VIP', TRUE, '8-567-890');

-- Insertar empleados
INSERT INTO Empleado (Nombre, Cargo, Turno, Activo, NumeroEmpleado)
VALUES 
('Sandra Velásquez', 'Cajera', 'Mañana', TRUE, 'EMP-001'),
('Ricardo Jiménez', 'Vendedor', 'Tarde', TRUE, 'EMP-002'),
('Laura Sánchez', 'Supervisor', 'Noche', TRUE, 'EMP-003'),
('Andrés Herrera', 'Vendedor', 'Mañana', TRUE, 'EMP-004'),
('Gabriela Moreno', 'Gerente', 'Tarde', TRUE, 'EMP-005');

-- Insertar ventas
INSERT INTO Venta (Fecha, ClienteID, EmpleadoID, TipoPago, Facturada, CodigoFactura)
VALUES 
('2025-04-25 10:30:00', 1, 1, 'Efectivo', TRUE, 'FAC-1001'),
('2025-04-25 11:00:00', 2, 2, 'Tarjeta', TRUE, 'FAC-1002'),
('2025-04-25 12:15:00', 3, 3, 'Transferencia', FALSE, 'FAC-1003'),
('2025-04-25 13:20:00', 4, 4, 'Efectivo', TRUE, 'FAC-1004'),
('2025-04-25 14:05:00', 5, 5, 'Tarjeta', TRUE, 'FAC-1005');

-- Insertar detalle de venta
INSERT INTO DetalleVenta (VentaID, ProductoID, Cantidad, PrecioUnitario, EstadoDetalle, DescuentoAplicado, CodigoDetalle)
VALUES 
(1, 1, 1, 850.99, 'Entregado', FALSE, 'DET-1001'),
(1, 4, 3, 5.50, 'Entregado', FALSE, 'DET-1002'),
(2, 2, 2, 29.99, 'Pendiente', FALSE, 'DET-1003'),
(3, 3, 1, 299.99, 'Entregado', TRUE, 'DET-1004'),
(4, 5, 1, 79.99, 'Pendiente', FALSE, 'DET-1005');


--Los inserts de la cancha de reserva
-- Insertar establecimientos
INSERT INTO Establecimiento (Nombre, Ubicacion, NumeroCanchas, Dueño, Telefono, Capacidad, Tipo, Activo, CodigoEstablecimiento)
VALUES 
('SportCenter Panamá', 'Ciudad de Panamá, Vía España', 4, 'Ricardo Moreno', '+507 6123-4567', 500, 'Club Deportivo', TRUE, 'EST-1001'),
('MegaPlay Arena', 'David, Chiriquí', 6, 'Laura Estrada', '+507 6345-7890', 800, 'Complejo Público', TRUE, 'EST-1002'),
('Cancha El Dorado', 'Panamá Norte', 2, 'José Pérez', '+507 6987-1234', 300, 'Privado', TRUE, 'EST-1003'),
('Fútbol Zone', 'La Chorrera, Panamá Oeste', 5, 'Ana Villalobos', '+507 6789-4321', 600, 'Club Deportivo', TRUE, 'EST-1004'),
('Multisports Center', 'Santiago, Veraguas', 3, 'Pedro Salazar', '+507 6222-3344', 450, 'Complejo Público', TRUE, 'EST-1005');

-- Insertar caanchas
INSERT INTO Cancha (Nombre, Tarifa, Capacidad, EstablecimientoID, TipoSuperficie, Techada, CodigoCancha)
VALUES 
('Cancha A - Fútbol 5', 45.00, 10, 1, 'Sintético', TRUE, 'CAN-1001'),
('Cancha B - Fútbol 7', 60.00, 14, 1, 'Césped', FALSE, 'CAN-1002'),
('Pista de Tenis 1', 30.00, 4, 2, 'Parquet', FALSE, 'CAN-1003'),
('Campo Principal', 80.00, 22, 4, 'Césped', TRUE, 'CAN-1004'),
('Cancha Multiuso', 50.00, 12, 5, 'Sintético', TRUE, 'CAN-1005');

-- Insertar deportes
INSERT INTO Deporte (Nombre, Tipo, Imagen, Icono, Clasificacion, CanchaID, Popularidad, Competitivo, CodigoDeporte)
VALUES 
('Fútbol Sala', 'Equipo', 'futbol_sala.jpg', 'icon_futbol.png', 'Colectivo', 1, 'Alta', TRUE, 'DEP-1001'),
('Tenis', 'Individual', 'tenis.jpg', 'icon_tenis.png', 'Individual', 3, 'Media', TRUE, 'DEP-1002'),
('Voleibol', 'Equipo', 'voleibol.jpg', 'icon_voleibol.png', 'Colectivo', 5, 'Media', TRUE, 'DEP-1003'),
('Básquetbol', 'Equipo', 'basquet.jpg', 'icon_basquet.png', 'Colectivo', 4, 'Alta', TRUE, 'DEP-1004'),
('Pádel', 'Individual/Doble', 'padel.jpg', 'icon_padel.png', 'Colectivo', 2, 'Baja', FALSE, 'DEP-1005');

-- Insertar usuarios
INSERT INTO Usuario (Nombre, Username, Contraseña, Estado, Perfil, Correo, UltimoIngreso, EsDueño, CodigoUsuario)
VALUES 
('Diego Gómez', 'diego_gomez', 'pass1234', 'Activo', 'Cliente', 'dgomez@email.com', '2025-04-25 08:00:00', FALSE, 'USR-1001'),
('Paola Díaz', 'paola_diaz', 'pass5678', 'Activo', 'Administrador', 'pdiaz@email.com', '2025-04-25 09:30:00', TRUE, 'USR-1002'),
('Andrés Mejía', 'andres_mejia', 'mejia2025', 'Activo', 'Cliente', 'amejia@email.com', '2025-04-24 21:15:00', FALSE, 'USR-1003'),
('Luisa Ortega', 'luisa_ortega', 'lortega88', 'Inactivo', 'Cliente', 'lortega@email.com', '2025-04-23 22:45:00', FALSE, 'USR-1004'),
('Fernando Aguilar', 'fernando_aguilar', 'faguilar99', 'Activo', 'Dueño', 'faguilar@email.com', '2025-04-25 07:30:00', TRUE, 'USR-1005');

-- Insertar deportes favoritos
INSERT INTO DeporteFavorito (Nombre, DeporteID, UsuarioID, Descripcion, NivelAmor, PracticaFrecuente, CodigoFavorito)
VALUES 
('Mi pasión por el Fútbol Sala', 1, 1, 'Juego los fines de semana', 'Alto', TRUE, 'FAV-1001'),
('Amante del Tenis', 2, 2, 'Entreno dos veces por semana', 'Alto', TRUE, 'FAV-1002'),
('Voleibol playero', 3, 3, 'Partidos casuales en verano', 'Medio', TRUE, 'FAV-1003'),
('Básquet en las tardes', 4, 4, 'Juegos de barrio', 'Medio', TRUE, 'FAV-1004'),
('Descubrimiento del Pádel', 5, 5, 'Nuevo hobby', 'Bajo', FALSE, 'FAV-1005');

-- Insertar formas de Pago
INSERT INTO FormaPago (Nombre, UsuarioID, EstablecimientoID, CanchaID, MetodoPago, PagoRealizado, CodigoPago)
VALUES 
('Reserva Fútbol Sala', 1, 1, 1, 'Tarjeta', TRUE, 'PAY-1001'),
('Pago Tenis', 2, 2, 3, 'Efectivo', TRUE, 'PAY-1002'),
('Reserva Voleibol', 3, 5, 5, 'Transferencia', FALSE, 'PAY-1003'),
('Cancha Básquet', 4, 4, 4, 'Efectivo', TRUE, 'PAY-1004'),
('Reserva Pádel', 5, 1, 2, 'Tarjeta', TRUE, 'PAY-1005');


-- Crear nuevo establecimiento
INSERT INTO Establecimiento (Nombre, Ubicacion, NumeroCanchas, Dueño, Telefono, Capacidad, Tipo, Activo, CodigoEstablecimiento)
VALUES ('Urban Soccer Panamá', 'Costa del Este, Panamá', 3, 'Camila Ríos', '+507 6999-1111', 350, 'Privado', TRUE, 'EST-2001');

-- Crear nueva cancha asociada
INSERT INTO Cancha (Nombre, Tarifa, Capacidad, EstablecimientoID, TipoSuperficie, Techada, CodigoCancha)
VALUES ('Cancha 1 - Urban', 55.00, 12, LAST_INSERT_ID(), 'Sintético', TRUE, 'CAN-2001');

-- Crear nuevo usuario
INSERT INTO Usuario (Nombre, Username, Contraseña, Estado, Perfil, Correo, UltimoIngreso, EsDueño, CodigoUsuario)
VALUES ('Sebastián Núñez', 'sebastian_n', 'clave2025', 'Activo', 'Cliente', 'sebastian@email.com', NOW(), FALSE, 'USR-2001');

-- Consultar usuarios
SELECT ID, Nombre, Username, Perfil, Correo FROM Usuario;

-- Crear nuevo deporte
INSERT INTO Deporte (Nombre, Tipo, Imagen, Icono, Clasificacion, CanchaID, Popularidad, Competitivo, CodigoDeporte)
VALUES ('Pickleball', 'Raqueta', 'pickleball.jpg', 'icon_pickleball.png', 'Individual/Doble', 5, 'Baja', FALSE, 'DEP-2001');

-- Modificar el deporte creado
UPDATE Deporte
SET Popularidad = 'Media', Competitivo = TRUE
WHERE CodigoDeporte = 'DEP-2001';


-- Asignar usuario, crear reserva y la forma de pago
INSERT INTO FormaPago (Nombre, UsuarioID, EstablecimientoID, CanchaID, MetodoPago, PagoRealizado, CodigoPago)
VALUES ('Reserva Pickleball - Urban', 6, 6, 6, 'Tarjeta', TRUE, 'PAY-2001');

--Para terminar tambien podemos consultar los pagos realizados por el usuario
SELECT FP.Nombre AS Reserva, FP.MetodoPago, FP.PagoRealizado, E.Nombre AS Establecimiento, C.Nombre AS Cancha
FROM FormaPago FP
JOIN Establecimiento E ON FP.EstablecimientoID = E.ID
JOIN Cancha C ON FP.CanchaID = C.ID
WHERE FP.UsuarioID = 6;

--Inseercion de consultas

-- Usar base de datos
USE parcial_plan_tienda;

-- Insertar TIENDAS
INSERT INTO TIENDA (nombre, ubicacion, abierta, codigo_unico) VALUES
('Tienda Norte', 'Ciudad Norte', TRUE, 'TIENDA001'),
('Tienda Sur', 'Ciudad Sur', TRUE, 'TIENDA002'),
('Tienda Este', 'Ciudad Este', TRUE, 'TIENDA003'),
('Tienda Oeste', 'Ciudad Oeste', TRUE, 'TIENDA004'),
('Tienda Central', 'Centro', TRUE, 'TIENDA005'),
('Tienda Playas', 'Costa', TRUE, 'TIENDA006'),
('Tienda Sierra', 'Montañas', TRUE, 'TIENDA007'),
('Tienda Amazonia', 'Selva', TRUE, 'TIENDA008'),
('Tienda Frontera', 'Frontera', TRUE, 'TIENDA009'),
('Tienda Metropoli', 'Gran Ciudad', TRUE, 'TIENDA010');

-- Insertar CARGOS
INSERT INTO CARGO (titulo, salario_base, nivel, vigente) VALUES
('Gerente', 2000.00, 'Nivel 1', TRUE),
('Cajero', 1000.00, 'Nivel 2', TRUE),
('Repositor', 900.00, 'Nivel 3', TRUE),
('Vendedor', 1100.00, 'Nivel 2', TRUE),
('Seguridad', 950.00, 'Nivel 3', TRUE),
('Supervisor', 1500.00, 'Nivel 1', TRUE),
('Limpieza', 800.00, 'Nivel 4', TRUE),
('Bodeguero', 850.00, 'Nivel 4', TRUE),
('Tecnico', 1300.00, 'Nivel 2', TRUE),
('Administrador', 1800.00, 'Nivel 1', TRUE);

-- Insertar EMPLEADOS
INSERT INTO EMPLEADO (nombre, apellido, fecha_ingreso, activo, tipo_lista, id_cargo) VALUES
('Ana', 'López', '2022-01-10', TRUE, 'Gerente', 1),
('Luis', 'Martínez', '2022-02-11', TRUE, 'Cajero', 2),
('Carlos', 'Pérez', '2022-03-12', TRUE, 'Repositor', 3),
('Marta', 'Ramírez', '2022-04-13', TRUE, 'Vendedor', 4),
('Jorge', 'Suárez', '2022-05-14', TRUE, 'Seguridad', 5),
('Sofía', 'Gómez', '2022-06-15', TRUE, 'Supervisor', 6),
('Pedro', 'Ortega', '2022-07-16', TRUE, 'Limpieza', 7),
('Lucía', 'Vargas', '2022-08-17', TRUE, 'Bodeguero', 8),
('Raúl', 'Salinas', '2022-09-18', TRUE, 'Técnico', 9),
('Elena', 'Mendoza', '2022-10-19', TRUE, 'Administrador', 10);

-- Insertar NOMINAS
INSERT INTO NOMINA (id_empleado, id_tienda, periodo_inicio, periodo_fin, total_devengado, pagado, medio_pago) VALUES
(1, 1, '2024-01-01', '2024-01-31', 2200.00, TRUE, 'Transferencia'),
(2, 2, '2024-01-01', '2024-01-31', 1050.00, TRUE, 'Efectivo'),
(3, 3, '2024-01-01', '2024-01-31', 950.00, TRUE, 'Transferencia'),
(4, 4, '2024-01-01', '2024-01-31', 1150.00, TRUE, 'Transferencia'),
(5, 5, '2024-01-01', '2024-01-31', 1000.00, TRUE, 'Efectivo'),
(6, 6, '2024-01-01', '2024-01-31', 1600.00, TRUE, 'Transferencia'),
(7, 7, '2024-01-01', '2024-01-31', 850.00, TRUE, 'Efectivo'),
(8, 8, '2024-01-01', '2024-01-31', 900.00, TRUE, 'Transferencia'),
(9, 9, '2024-01-01', '2024-01-31', 1350.00, TRUE, 'Transferencia'),
(10, 10, '2024-01-01', '2024-01-31', 1850.00, TRUE, 'Transferencia');

-- Usar base de datos
USE parcial_sis_fact;

-- Insertar PROVEEDORES
INSERT INTO PROVEEDOR (nombre, telefono, email, activo, pais) VALUES
('Proveedor A', '111-1111', 'provA@example.com', TRUE, 'México'),
('Proveedor B', '222-2222', 'provB@example.com', TRUE, 'España'),
('Proveedor C', '333-3333', 'provC@example.com', FALSE, 'Argentina'),
('Proveedor D', '444-4444', 'provD@example.com', TRUE, 'Colombia'),
('Proveedor E', '555-5555', 'provE@example.com', TRUE, 'Chile'),
('Proveedor F', '666-6666', 'provF@example.com', TRUE, 'Perú'),
('Proveedor G', '777-7777', 'provG@example.com', FALSE, 'Brasil'),
('Proveedor H', '888-8888', 'provH@example.com', TRUE, 'Uruguay'),
('Proveedor I', '999-9999', 'provI@example.com', TRUE, 'Bolivia'),
('Proveedor J', '000-0000', 'provJ@example.com', FALSE, 'Venezuela');

-- Insertar CATEGORIAS
INSERT INTO CATEGORIA (nombre, descripcion, vigente, slug) VALUES
('Electrónica', 'Dispositivos electrónicos', TRUE, 'electronica'),
('Ropa', 'Ropa de todo tipo', TRUE, 'ropa'),
('Alimentos', 'Productos alimenticios', TRUE, 'alimentos'),
('Hogar', 'Artículos del hogar', TRUE, 'hogar'),
('Juguetes', 'Juguetes para niños', TRUE, 'juguetes'),
('Deportes', 'Artículos deportivos', TRUE, 'deportes'),
('Belleza', 'Productos de belleza', TRUE, 'belleza'),
('Libros', 'Libros de varios géneros', TRUE, 'libros'),
('Automotriz', 'Accesorios de autos', TRUE, 'automotriz'),
('Mascotas', 'Productos para mascotas', TRUE, 'mascotas');

-- Insertar PRODUCTOS
INSERT INTO PRODUCTO (nombre, descripcion, precio, stock, fecha_creacion, activo, codigo_unico, id_proveedor) VALUES
('Laptop X', 'Laptop potente', 1500.00, 20, '2024-01-15', TRUE, 'PROD001', 1),
('Camiseta', 'Camiseta de algodón', 20.00, 100, '2024-01-16', TRUE, 'PROD002', 2),
('Chocolate', 'Chocolate negro', 5.00, 300, '2024-01-17', TRUE, 'PROD003', 3),
('Silla', 'Silla ergonómica', 100.00, 50, '2024-01-18', TRUE, 'PROD004', 4),
('Pelota', 'Pelota de fútbol', 30.00, 70, '2024-01-19', TRUE, 'PROD005', 5),
('Perfume', 'Perfume floral', 60.00, 40, '2024-01-20', TRUE, 'PROD006', 6),
('Libro A', 'Novela romántica', 15.00, 200, '2024-01-21', TRUE, 'PROD007', 7),
('Aceite', 'Aceite para motor', 25.00, 150, '2024-01-22', TRUE, 'PROD008', 8),
('Collar', 'Collar para perros', 10.00, 90, '2024-01-23', TRUE, 'PROD009', 9),
('Tablet Y', 'Tablet de 10 pulgadas', 250.00, 30, '2024-01-24', TRUE, 'PROD010', 10);

-- Insertar CATEGORIA_PRODUCTO
INSERT INTO CATEGORIA_PRODUCTO (id_categoria, id_producto, fecha_asignacion) VALUES
(1, 1, '2024-02-01'),
(2, 2, '2024-02-02'),
(3, 3, '2024-02-03'),
(4, 4, '2024-02-04'),
(6, 5, '2024-02-05'),
(7, 6, '2024-02-06'),
(8, 7, '2024-02-07'),
(9, 8, '2024-02-08'),
(10, 9, '2024-02-09'),
(1, 10, '2024-02-10');


USE zero_security_360;

-- Insertar USUARIO
INSERT INTO USUARIO (nombre, apellido, nombre_usuario, token, contrasena, ciudad, sexo, estado_civil, tipo_empresa, direccion, tipo_usuario, activo, fecha_registro) VALUES
('Carlos', 'Ramírez', 'carlosr', 'token1', 'pass123', 'Ciudad A', 'M', 'Soltero', 'Pública', 'Calle 1', 'Cliente', TRUE, '2024-01-01'),
('Ana', 'Gómez', 'anag', 'token2', 'pass456', 'Ciudad B', 'F', 'Casada', 'Privada', 'Calle 2', 'Administrador', TRUE, '2024-01-02'),
('Luis', 'Pérez', 'luisp', 'token3', 'pass789', 'Ciudad C', 'M', 'Soltero', 'Pública', 'Calle 3', 'Vendedor', TRUE, '2024-01-03'),
('María', 'Torres', 'mariat', 'token4', 'pass321', 'Ciudad D', 'F', 'Divorciada', 'Privada', 'Calle 4', 'Ejecutivo', TRUE, '2024-01-04'),
('Jorge', 'Luna', 'jorgel', 'token5', 'pass654', 'Ciudad E', 'M', 'Casado', 'Pública', 'Calle 5', 'Otro', TRUE, '2024-01-05');

-- Insertar LOGIN
INSERT INTO LOGIN (id_usuario, agente_usuario, fecha_login, token) VALUES
(1, 'Chrome Windows', '2024-04-01', 'logtoken1'),
(2, 'Firefox Linux', '2024-04-02', 'logtoken2'),
(3, 'Safari iOS', '2024-04-03', 'logtoken3'),
(4, 'Edge Windows', '2024-04-04', 'logtoken4'),
(5, 'Opera Android', '2024-04-05', 'logtoken5');

-- Insertar TIPO_PRUEBA
INSERT INTO TIPO_PRUEBA (referencia, nombre, descripcion, fecha_ingreso, estado, categoria, nivel_riesgo) VALUES
('TP001', 'Prueba Web', 'Test de vulnerabilidades en sitios web', '2024-02-01', TRUE, 'Web', 'Alto'),
('TP002', 'Prueba Red', 'Análisis de redes internas', '2024-02-02', TRUE, 'Red', 'Medio'),
('TP003', 'Phishing Test', 'Simulación de ataques de phishing', '2024-02-03', TRUE, 'Ingeniería Social', 'Alto'),
('TP004', 'Penetración Móvil', 'Test de seguridad en apps móviles', '2024-02-04', TRUE, 'Móvil', 'Alto'),
('TP005', 'Análisis Código', 'Revisión de vulnerabilidades en código fuente', '2024-02-05', TRUE, 'Código', 'Bajo');

-- Insertar PAGO
INSERT INTO PAGO (id_usuario, monto, fecha_pago, metodo_pago, confirmado, referencia_pago) VALUES
(1, 500.00, '2024-03-01', 'Tarjeta Crédito', TRUE, 'PAY001'),
(2, 750.00, '2024-03-02', 'PayPal', TRUE, 'PAY002'),
(3, 300.00, '2024-03-03', 'Transferencia', TRUE, 'PAY003'),
(4, 450.00, '2024-03-04', 'Criptomoneda', TRUE, 'PAY004'),
(5, 600.00, '2024-03-05', 'Efectivo', TRUE, 'PAY005');

-- Insertar INFORME
INSERT INTO INFORME (id_usuario, id_tipo_prueba, fecha_informe, resultado, estado_informe, aprobado) VALUES
(1, 1, '2024-04-10', 'Sitio vulnerable a XSS', 'Pendiente', FALSE),
(2, 2, '2024-04-11', 'Red sin vulnerabilidades críticas', 'Finalizado', TRUE),
(3, 3, '2024-04-12', 'Usuarios vulnerables a phishing', 'Finalizado', TRUE),
(4, 4, '2024-04-13', 'Aplicación móvil con riesgo de fuga de datos', 'Pendiente', FALSE),
(5, 5, '2024-04-14', 'Código presenta malas prácticas', 'Finalizado', TRUE);


SELECT id_usuario FROM pago;
SELECT * FROM PROVEEDOR WHERE correo = 'provF@example.com';

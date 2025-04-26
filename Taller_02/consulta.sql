-- Insertar perfiles
INSERT INTO Perfil (Nombre, FechaVigencia, Descripcion, Encargado)
VALUES 
('Gerente General', '2025-12-31', 'Responsable de la dirección general', 'María Rodríguez'),
('Supervisor de Ventas', '2025-12-31', 'Coordina equipo de ventas', 'Carlos Díaz'),
('Analista de Recursos Humanos', '2025-12-31', 'Gestión de talento humano', 'Lucía Mendoza'),
('Especialista en TI', '2025-12-31', 'Soporte de tecnología', 'Roberto Castillo'),
('Asistente Administrativo', '2025-12-31', 'Apoyo en actividades administrativas', 'Paola López'),
('Coordinador de Marketing', '2025-12-31', 'Planificación de campañas', 'Andrés Vergara'),
('Contador Financiero', '2025-12-31', 'Manejo de contabilidad', 'Sofía Moreno'),
('Gerente de Operaciones', '2025-12-31', 'Optimización de procesos', 'Ricardo Campos'),
('Líder de Proyecto', '2025-12-31', 'Coordinación de proyectos', 'Adriana Núñez'),
('Consultor Externo', '2025-12-31', 'Apoyo estratégico temporal', 'Fernando Salazar');

-- Insertar Usuarios
INSERT INTO Usuario (Nombre, Apellido, Estado, Contraseña, Cargo, Salario, FechaIngreso, PerfilID)
VALUES 
('Diego', 'Gómez', 'Activo', 'password123', 'Vendedor', 1200.00, '2023-01-10', 2),
('Camila', 'Ortega', 'Activo', 'clave456', 'Analista RRHH', 1500.00, '2023-02-15', 3),
('Luis', 'Mejía', 'Activo', 'contraseña789', 'Asistente TI', 1400.00, '2023-03-20', 4),
('María', 'Torres', 'Activo', 'pass123', 'Administrativo', 1100.00, '2023-04-05', 5),
('José', 'Herrera', 'Activo', 'pass456', 'Supervisor Ventas', 1800.00, '2023-01-25', 2),
('Ana', 'González', 'Activo', 'pass789', 'Coordinador Marketing', 1600.00, '2023-05-15', 6),
('Javier', 'Ramírez', 'Activo', 'pass321', 'Contador', 2000.00, '2023-06-10', 7),
('Patricia', 'Fernández', 'Activo', 'pass654', 'Gerente Operaciones', 2200.00, '2023-07-01', 8),
('Carlos', 'Pérez', 'Activo', 'pass987', 'Líder Proyecto', 2100.00, '2023-08-20', 9),
('Lucía', 'Cortés', 'Activo', 'pass111', 'Consultora Externa', 2500.00, '2023-09-30', 10),
('Raúl', 'Montenegro', 'Activo', 'pass222', 'Vendedor', 1200.00, '2023-10-05', 2),
('Daniela', 'Chacón', 'Activo', 'pass333', 'Analista RRHH', 1500.00, '2023-11-12', 3),
('Pedro', 'Salinas', 'Activo', 'pass444', 'Asistente TI', 1400.00, '2023-01-15', 4),
('Sofía', 'Castro', 'Activo', 'pass555', 'Administrativo', 1100.00, '2023-02-17', 5),
('Héctor', 'Delgado', 'Activo', 'pass666', 'Supervisor Ventas', 1800.00, '2023-03-20', 2),
('Julieta', 'Morales', 'Activo', 'pass777', 'Coordinadora Marketing', 1600.00, '2023-04-22', 6),
('Ricardo', 'Vega', 'Activo', 'pass888', 'Contador', 2000.00, '2023-05-25', 7),
('Paola', 'Méndez', 'Activo', 'pass999', 'Gerente Operaciones', 2200.00, '2023-06-28', 8),
('Esteban', 'Suárez', 'Activo', 'pass000', 'Líder Proyecto', 2100.00, '2023-07-30', 9),
('Gabriela', 'Molina', 'Activo', 'passabc', 'Consultora Externa', 2500.00, '2023-08-15', 10);


-- Insertar registros de Login
INSERT INTO Login (UsuarioID, FechaHora)
VALUES
(1, '2025-02-01 08:15:00'),
(1, '2025-02-02 09:10:00'),
(1, '2025-02-05 10:00:00'),
(1, '2025-02-10 11:45:00'),
(1, '2025-02-15 14:00:00'),

(2, '2025-02-01 07:45:00'),
(2, '2025-02-04 08:20:00'),
(2, '2025-02-09 09:30:00'),
(2, '2025-02-15 10:00:00'),
(2, '2025-02-20 11:00:00'),

(3, '2025-02-02 08:00:00'),
(3, '2025-02-07 09:00:00'),
(3, '2025-02-12 10:30:00'),
(3, '2025-02-18 11:15:00'),
(3, '2025-02-22 14:30:00'),

(4, '2025-02-03 07:30:00'),
(4, '2025-02-08 08:45:00'),
(4, '2025-02-14 09:50:00'),
(4, '2025-02-19 10:40:00'),
(4, '2025-02-25 12:00:00'),

(5, '2025-02-01 08:05:00'),
(5, '2025-02-05 09:20:00'),
(5, '2025-02-09 10:30:00'),
(5, '2025-02-14 11:10:00'),
(5, '2025-02-20 12:15:00'),

(6, '2025-02-02 07:55:00'),
(6, '2025-02-06 08:50:00'),
(6, '2025-02-10 09:40:00'),
(6, '2025-02-16 10:30:00'),
(6, '2025-02-22 11:45:00'),

(7, '2025-02-01 08:10:00'),
(7, '2025-02-07 09:00:00'),
(7, '2025-02-12 10:10:00'),
(7, '2025-02-17 11:20:00'),
(7, '2025-02-23 13:00:00'),

(8, '2025-02-03 07:30:00'),
(8, '2025-02-08 08:40:00'),
(8, '2025-02-14 09:35:00'),
(8, '2025-02-18 10:25:00'),
(8, '2025-02-24 12:00:00'),

(9, '2025-02-02 08:00:00'),
(9, '2025-02-05 09:15:00'),
(9, '2025-02-09 10:20:00'),
(9, '2025-02-15 11:25:00'),
(9, '2025-02-21 13:30:00'),

(10, '2025-02-01 08:30:00'),
(10, '2025-02-06 09:10:00'),
(10, '2025-02-11 10:45:00'),
(10, '2025-02-16 11:50:00'),
(10, '2025-02-22 12:45:00'),

(11, '2025-02-03 07:50:00'),
(11, '2025-02-08 08:30:00'),
(11, '2025-02-13 09:40:00'),
(11, '2025-02-18 10:55:00'),
(11, '2025-02-23 13:10:00'),

(12, '2025-02-04 08:15:00'),
(12, '2025-02-09 09:25:00'),
(12, '2025-02-14 10:30:00'),
(12, '2025-02-20 11:35:00'),
(12, '2025-02-25 12:30:00'),

(13, '2025-02-05 08:25:00'),
(13, '2025-02-10 09:30:00'),
(13, '2025-02-15 10:40:00'),
(13, '2025-02-21 11:50:00'),
(13, '2025-02-26 13:20:00'),

(14, '2025-02-06 08:35:00'),
(14, '2025-02-11 09:40:00'),
(14, '2025-02-16 10:50:00'),
(14, '2025-02-22 11:55:00'),
(14, '2025-02-27 12:40:00'),

(15, '2025-02-07 08:45:00'),
(15, '2025-02-12 09:50:00'),
(15, '2025-02-17 10:55:00'),
(15, '2025-02-23 12:00:00'),
(15, '2025-02-28 13:10:00'),

(16, '2025-02-08 08:50:00'),
(16, '2025-02-13 09:30:00'),
(16, '2025-02-18 10:20:00'),
(16, '2025-02-24 11:15:00'),
(16, '2025-02-28 12:00:00'),

(17, '2025-02-09 08:15:00'),
(17, '2025-02-14 09:10:00'),
(17, '2025-02-19 10:30:00'),
(17, '2025-02-25 11:20:00'),
(17, '2025-02-28 13:30:00'),

(18, '2025-02-10 08:00:00'),
(18, '2025-02-15 09:00:00'),
(18, '2025-02-20 10:00:00'),
(18, '2025-02-26 11:00:00'),
(18, '2025-02-28 12:00:00'),

(19, '2025-02-11 08:20:00'),
(19, '2025-02-16 09:30:00'),
(19, '2025-02-21 10:40:00'),
(19, '2025-02-27 11:50:00'),
(19, '2025-02-28 13:00:00'),

(20, '2025-02-12 08:30:00'),
(20, '2025-02-17 09:40:00'),
(20, '2025-02-22 10:50:00'),
(20, '2025-02-28 11:55:00'),
(20, '2025-02-28 14:00:00');
--registro de actividad del año
INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(1, 'Torneo Deportivo', '2025-01-15', 100),
(2, 'Torneo Deportivo', '2025-01-15', 100),
(3, 'Torneo Deportivo', '2025-01-15', 100),
(4, 'Torneo Deportivo', '2025-01-15', 100),
(5, 'Torneo Deportivo', '2025-01-15', 100);

INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(6, 'Semana de la Salud', '2025-02-10', 80),
(7, 'Semana de la Salud', '2025-02-10', 80),
(8, 'Semana de la Salud', '2025-02-10', 80),
(9, 'Semana de la Salud', '2025-02-10', 80),
(10, 'Semana de la Salud', '2025-02-10', 80);

INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(11, 'Voluntariado Comunitario', '2025-03-12', 90),
(12, 'Voluntariado Comunitario', '2025-03-12', 90),
(13, 'Voluntariado Comunitario', '2025-03-12', 90),
(14, 'Voluntariado Comunitario', '2025-03-12', 90),
(15, 'Voluntariado Comunitario', '2025-03-12', 90);

INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(16, 'Día de la Familia', '2025-04-18', 70),
(17, 'Día de la Familia', '2025-04-18', 70),
(18, 'Día de la Familia', '2025-04-18', 70),
(19, 'Día de la Familia', '2025-04-18', 70),
(20, 'Día de la Familia', '2025-04-18', 70);

INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(1, 'Campeonato Interno de Fútbol', '2025-05-10', 110),
(2, 'Campeonato Interno de Fútbol', '2025-05-10', 110),
(3, 'Campeonato Interno de Fútbol', '2025-05-10', 110),
(4, 'Campeonato Interno de Fútbol', '2025-05-10', 110),
(5, 'Campeonato Interno de Fútbol', '2025-05-10', 110);


INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(6, 'Campaña de Donación de Sangre', '2025-06-20', 75),
(7, 'Campaña de Donación de Sangre', '2025-06-20', 75),
(8, 'Campaña de Donación de Sangre', '2025-06-20', 75),
(9, 'Campaña de Donación de Sangre', '2025-06-20', 75),
(10, 'Campaña de Donación de Sangre', '2025-06-20', 75);

INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(11, 'Jornada de Capacitación', '2025-07-15', 85),
(12, 'Jornada de Capacitación', '2025-07-15', 85),
(13, 'Jornada de Capacitación', '2025-07-15', 85),
(14, 'Jornada de Capacitación', '2025-07-15', 85),
(15, 'Jornada de Capacitación', '2025-07-15', 85);

INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(16, 'Reto de Innovación', '2025-08-10', 95),
(17, 'Reto de Innovación', '2025-08-10', 95),
(18, 'Reto de Innovación', '2025-08-10', 95),
(19, 'Reto de Innovación', '2025-08-10', 95),
(20, 'Reto de Innovación', '2025-08-10', 95);

INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(1, 'Concurso de Ideas', '2025-09-05', 100),
(2, 'Concurso de Ideas', '2025-09-05', 100),
(3, 'Concurso de Ideas', '2025-09-05', 100),
(4, 'Concurso de Ideas', '2025-09-05', 100),
(5, 'Concurso de Ideas', '2025-09-05', 100);


INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(6, 'Semana de Reconocimiento', '2025-10-12', 90),
(7, 'Semana de Reconocimiento', '2025-10-12', 90),
(8, 'Semana de Reconocimiento', '2025-10-12', 90),
(9, 'Semana de Reconocimiento', '2025-10-12', 90),
(10, 'Semana de Reconocimiento', '2025-10-12', 90);


INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(11, 'Actividad de Responsabilidad Ambiental', '2025-11-15', 80),
(12, 'Actividad de Responsabilidad Ambiental', '2025-11-15', 80),
(13, 'Actividad de Responsabilidad Ambiental', '2025-11-15', 80),
(14, 'Actividad de Responsabilidad Ambiental', '2025-11-15', 80),
(15, 'Actividad de Responsabilidad Ambiental', '2025-11-15', 80);

INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
VALUES
(16, 'Fiesta de Fin de Año', '2025-12-20', 120),
(17, 'Fiesta de Fin de Año', '2025-12-20', 120),
(18, 'Fiesta de Fin de Año', '2025-12-20', 120),
(19, 'Fiesta de Fin de Año', '2025-12-20', 120),
(20, 'Fiesta de Fin de Año', '2025-12-20', 120);

-- Crear la vista del usuario
CREATE VIEW vista_fidelizacion_usuarios AS
SELECT 
    U.ID AS UsuarioID,
    CONCAT(U.Nombre, ' ', U.Apellido) AS NombreCompleto,
    SUM(F.Puntos) AS TotalPuntosAcumulados
FROM 
    Usuario U
INNER JOIN 
    Fidelizacion F ON U.ID = F.UsuarioID
GROUP BY 
    U.ID, U.Nombre, U.Apellido
ORDER BY 
    TotalPuntosAcumulados DESC;


SELECT * FROM vista_fidelizacion_usuarios;
--plus 
-- Crear Procedimiento para insertar registros 
DELIMITER $$

CREATE PROCEDURE insertar_fidelizacion(
    IN p_UsuarioID INT,
    IN p_Actividad VARCHAR(255),
    IN p_Fecha DATE,
    IN p_Puntos INT
)
BEGIN
    INSERT INTO Fidelizacion (UsuarioID, Actividad, Fecha, Puntos)
    VALUES (p_UsuarioID, p_Actividad, p_Fecha, p_Puntos);
END $$

DELIMITER ;

CALL insertar_fidelizacion(1, 'Día del Deporte', '2026-01-10', 90);


--No se dañaron manos en la creacion de este documento :,(
--gracias a carlitos db y a hola mundo dev suscrobanse a mi canal BD_project
-- siganme en instagram como BD_project
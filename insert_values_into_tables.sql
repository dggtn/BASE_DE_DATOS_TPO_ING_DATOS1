- Insertar datos en la tabla Proveedores
INSERT INTO dbo.Proveedor (nombre, email) VALUES
('Aerolíneas Argentinas S.A.', 'contacto@aerolineas.com'),
('Traslados S.R.L.', 'contacto@traslados.com'),
('excursiones Ltda.', 'contacto@excursionespremium.com'),
('Hotel Hilton ', 'contacto@hilton.com'),
('Hotel Marriot Inc.', 'contacto@hotelMarriot.com');

INSERT INTO dbo.Cliente (dni,nombre,apellido, fechaNacimiento) VALUES
('12345678', 'Juan Pérez', 'Pérez', '1990-01-01'),
('87654321', 'María Gómez', 'Gómez', '1992-02-02'),
('13579246', 'Pedro Fernández', 'Fernández', '1988-03-03'),
('24681357', 'Laura Martínez', 'Martínez', '1995-04-04'),
('10293847', 'Carlos López', 'López', '1985-05-05');

INSERT INTO dbo.Compra (idReserva, fecha) VALUES
('1', '2023-01-01'),
('2', '2023-02-02'),
('3', '2023-03-03'),
('4', '2023-04-04'),
('5', '2023-05-05');

ALTER TABLE dbo.Paquete
ALTER COLUMN nombre
VARCHAR(100);

INSERT INTO dbo.Paquete (nombre,precio,cupo) VALUES
('paquete allInclusive', 100.00, 10),
('paquete familiar', 200.00, 20),
('paquete parejas', 150.00, 15),
('paquete aventura', 300.00, 30),
('paquete ejecutivo', 250.00, 25);

INSERT INTO dbo.Reserva (idCliente,fecha,estado,total) VALUES
('1', '2023-01-01', 'Confirmada', 100.00),
('2', '2023-02-02', 'Pendiente', 200.00),
('3', '2023-03-03', 'Cancelada', 150.00),
('4', '2023-04-04', 'Confirmada', 300.00),
('5', '2023-05-05', 'Pendiente', 250.00);

INSERT INTO dbo.LineaDetalle (idReserva,idPaquete,cantidad,precio) VALUES
('1', '3', 1, 100.00),
('2', '4', 1, 200.00),
('3', '5', 1, 150.00),
('4', '6', 1, 300.00),
('5', '7', 1, 250.00);

SELECT * FROM LineaDetalle;

ALTER TABLE dbo.LineaDetalle
DROP COLUMN nombre;
SELECT * FROM LineaDetalle;

SELECT * FROM Servicio;

ALTER TABLE dbo.Servicio
ALTER COLUMN nombre
VARCHAR(255);
ALTER TABLE dbo.Servicio
ALTER COLUMN estado
VARCHAR(255);
ALTER TABLE dbo.Servicio
ALTER COLUMN descripcion
VARCHAR(255)

INSERT INTO dbo.Servicio (idProveedor,nombre,costo,precio,cupo,estado,descripcion) VALUES
('1', 'Vuelo Buenos Aires - Córdoba', 50.00, 100.00, 150, 'Disponible', 'Vuelo directo de Buenos Aires a Córdoba'),
('2', 'Traslado Aeropuerto - Hotel', 30.00, 60.00, 100, 'Disponible', 'Servicio de traslado desde el aeropuerto al hotel'),
('3', 'Excursión a las Cataratas del Iguazú', 80.00, 160.00, 50, 'Disponible', 'Tour completo a las Cataratas del Iguazú'),
('4', 'Alojamiento en Hotel Hilton', 120.00, 240.00, 200, 'Disponible', 'Estadía en el Hotel Hilton con desayuno incluido'),
('5', 'Alojamiento en Hotel Marriot', 110.00, 220.00, 180, 'Disponible', 'Estadía en el Hotel Marriot con desayuno incluido');


SELECT * FROM dbo.Servicio;
INSERT INTO dbo.Paquete_Servicio (idServicio,idPaquete) VALUES
('4', '3'),
('5', '4'),
('6', '5'),
('7', '6'),
('8', '7');
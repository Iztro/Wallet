CREATE TABLE Usuarios ( 
idUsuario INT AUTO_INCREMENT PRIMARY KEY, 
nombre VARCHAR(255) NOT NULL, 
apellido VARCHAR(255) NOT NULL, 
correoElectronico VARCHAR(255) UNIQUE NOT NULL, 
contrasenaHash CHAR(63) NOT NULL, 
fechaCreacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP );

ALTER TABLE Transacciones 
ADD COLUMN idCategoria 
INT, ADD foreign key (idCategoria) 
REFERENCES Categorias(idCategoria);

INSERT INTO Usuarios (nombre, apellido, correoElectronico, contrasenaHash) 
VALUES  (
'Ivan', 'Ivanov', 'ivan@ourwallet.su', SHA2('contraseña123', 256)), 
('Alexei', 'Petrov', 'alexei@ourwallet.su', SHA2('contraseña456', 256)), 
('Maria', 'Volkova', 'maria@ourwallet.su', SHA2('contraseña789', 256)), 
('Nikolai', 'Morozov', 'nikolai@ourwallet.su', SHA2('password123', 256)), 
('Anastasia', 'Fedorova', 'anastasia@ourwallet.su', SHA2('password456', 256)), 
('Dmitri', 'Ivanov', 'dmitri@ourwallet.su', SHA2('password789', 256)), 
('Deneb', 'Empress', 'deneb@ourwallet.su', SHA2('starpassword', 256)), 
('Franz', 'Moralevich Opazov', 'Franz@ourwallet.su', SHA2('ourpass', 256));

INSERT INTO Categorias (nombre, descripcion) 
VALUES ('Alimentos', 'Gastos relacionados con comida'),
('Servicios', 'Pago de servicios básicos'),
('Entretenimiento', 'Gastos relacionados con el entretenimiento'),
('Transporte', 'Gastos relacionados con transporte');

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) 
VALUES (2, 'transferencia', 50000, 1);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (2, 'compra', 500000, 3);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (3, 'depósito', 150000, 1);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (3, 'compra', 20000, 4);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (4, 'transferencia', 20000, 2);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (5, 'depósito', 30000, 1);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (5, 'compra', 10000, 2);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (6, 'transferencia', 1000000, 1);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (6, 'compra', 150000, 3);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (7, 'depósito', 5000000, 1);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (7, 'compra', 70000, 2);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (8, 'deposito', 2500000, 1);

INSERT INTO Transacciones (idUsuario, tipo, monto, idCategoria) VALUES (8, 'compra', 300000, 2);

SELECT idCategoria FROM `our_db`.`categorias` LIMIT 0, 1000;

SELECT nombre FROM `our_db`.`categorias` LIMIT 0, 1000;

SELECT descripcion FROM `our_db`.`categorias` LIMIT 0, 1000;

SELECT idTransaccion FROM `our_db`.`transacciones` LIMIT 0, 1000;

SELECT idUsuario FROM `our_db`.`transacciones` LIMIT 0, 1000;

SELECT tipo FROM `our_db`.`transacciones` LIMIT 0, 1000;

SELECT monto FROM `our_db`.`transacciones` LIMIT 0, 1000;

SELECT fecha FROM `our_db`.`transacciones` LIMIT 0, 1000;

SELECT idCategoria FROM `our_db`.`transacciones` LIMIT 0, 1000;

SELECT * FROM our_db.usuarios LIMIT 0, 1000;

SELECT * FROM our_db.categorias LIMIT 0, 1000
;
SELECT * FROM our_db.usuarios LIMIT 0, 1000
;
CREATE TABLE Moneda ( 
currency_id INT AUTO_INCREMENT PRIMARY KEY,     
currency_name VARCHAR(255) NOT NULL,     
currency_symbol VARCHAR(10) NOT NULL )
;
SELECT idUsuario FROM `our_db`.`transacciones` LIMIT 0, 1000;

SELECT * FROM our_db.usuarios LIMIT 0, 1000;

ALTER TABLE Usuarios ADD saldo DECIMAL(10, 2) DEFAULT 0;

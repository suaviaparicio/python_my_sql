
-- Consulta: crea 3 usuarios nuevos
INSERT INTO usuarios (nombre, apellido, email, created_at, updated_at)
VALUES ('Diego', 'Alvarez', 'dalvarez@ejemplo.com', NOW(), NOW()), 
('Camilo', 'Hernández', 'cernandez@ejemplo.com', NOW(), NOW()), 
('Valeria', 'Sierra', 'vierra@ejemplo.com', NOW(), NOW());

-- Consulta: recupera todos los usuarios
SELECT *
FROM usuarios;

-- Consulta: recupera el primer usuario que usa su dirección de correo electrónico
SELECT id, nombre, apellido, email
FROM usuarios
WHERE ID = 1;

-- Consulta: recupera el último usuario que usa su id
SELECT id, nombre, apellido, email
FROM usuarios
WHERE id = 3;

-- Consulta: cambia el usuario con id=3 para que su apellido sea Panqueque
UPDATE usuarios
SET apellido = 'Panqueque'
WHERE id = 3;

-- Consulta: elimina el usuario con id=2 de la base de datos
DELETE FROM usuarios
WHERE id = 2;

-- Consulta: obtén todos los usuarios, ordenados por su nombre
SELECT * FROM usuarios
ORDER BY nombre; 

-- Consulta BONUS: obtén todos los usuarios, ordenados por su nombre en orden descendente
SELECT * FROM usuarios
ORDER BY nombre DESC; 







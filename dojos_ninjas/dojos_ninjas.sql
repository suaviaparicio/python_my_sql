
-- Consulta: crea 3 dojos nuevos
INSERT INTO dojos (nombre, created_at, updated_at)
VALUES ('Medellin', NOW(), NOW()), ('Bogota', NOW(), NOW()), ('Barranquilla', NOW(), NOW());

-- Consulta: elimina los 3 dojos que acabas de crear
DELETE FROM dojos
WHERE id BETWEEN 1 AND 3;

-- Consulta: crea 3 dojos nuevos
INSERT INTO dojos (nombre, created_at, updated_at)
VALUES ('Jardín', NOW(), NOW()), ('Jericó', NOW(), NOW()), ('Puerto Berrío', NOW(), NOW());

-- Consulta: crea 3 ninjas que pertenezcan al primer dojo
INSERT INTO ninjas (nombre, apellido, edad, created_at, updated_at, dojo_id)
VALUES ('Andres', 'Correa', 23, NOW(), NOW(), 7), ('Camila', 'Sepulveda', 30, NOW(), NOW(), 7), ('Isabella', 'Dominguez', 19, NOW(), NOW(), 7);

-- Consulta: crea 3 ninjas que pertenezcan al segundo dojo
INSERT INTO ninjas (nombre, apellido, edad, created_at, updated_at, dojo_id)
VALUES ('Carlos', 'Arango', 45, NOW(), NOW(), 8), ('Jessica', 'Acevedo', 20, NOW(), NOW(), 8), ('Alejandra', 'Ramirez', 32, NOW(), NOW(), 8);

-- Consulta: crea 3 ninjas que pertenezcan al tercer dojo
INSERT INTO ninjas (nombre, apellido, edad, created_at, updated_at, dojo_id)
VALUES ('Mauricio', 'Piedrahita', 17, NOW(), NOW(), 9), ('Sandra', 'Rojas', 26, NOW(), NOW(), 9), ('Juan', 'Villegas', 29, NOW(), NOW(), 9);

-- Consulta: recupera todos los ninjas del primer dojo
SELECT *
FROM ninjas
WHERE dojo_id = 7;

-- Consulta: recupera todos los ninjas del último dojo
SELECT *
FROM ninjas
ORDER BY dojo_id DESC
LIMIT 3; 

-- Consulta: recupera el dojo del último ninja
SELECT dojos.id, dojos.nombre, dojos.created_at, dojos.updated_at
FROM ninjas 
JOIN dojos ON ninjas.dojo_id = dojos.id
WHERE ninjas.id = 9;


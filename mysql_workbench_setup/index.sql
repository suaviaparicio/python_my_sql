USE twitter;

-- INSERT
INSERT INTO users (first_name, last_name, handle, birthday, created_at, updated_at)
VALUE ('Lina', 'Aparicio', 'liapa', '1990-08-26', NOW(), NOW());

-- SELECT
SELECT * 
FROM users;

-- UPDATE
UPDATE users
SET birthday = '1991-08-26'
WHERE id = 6; 

-- DELETE
DELETE FROM users
WHERE id = 8;


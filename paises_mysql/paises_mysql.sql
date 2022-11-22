USE world

-- 1. ¿Qué consulta ejecutarías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de habla del idioma.  
-- Tu consulta debe ordenar el resultado por porcentaje de habla del idioma en orden descendente.(1)
SELECT countries.name, languages.language, languages.percentage
FROM languages
JOIN countries ON countries.id = languages.country_id
WHERE language = 'slovene'
ORDER BY languages.percentage DESC;


-- 2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades de cada país?  
-- Tu consulta debe devolver el nombre del país, el idioma y el número total de ciudades. 
-- Tu consulta debe ordenar el resultado por el número de ciudades en orden descendente. (3)
SELECT countries.name, languages.language, count(cities.name) AS cities
FROM cities
JOIN countries ON countries.id = cities.country_id
JOIN languages ON countries.id = languages.country_id
GROUP BY countries.name, languages.language 
ORDER BY cities DESC;


-- 3. ¿Qué consulta ejecutarías para obtener todos ciudades de México con una población mayor a 500,000? 
-- Tu consulta debe ordenar el resultado por población en orden descendente. (1)
SELECT cities.name, cities.population, cities.country_id
FROM cities
WHERE country_code = 'mex' AND population > 500000
ORDER BY population DESC;


-- 4. ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje de habla mayor a 89%? 
-- Tu consulta debe ordenar el resultado por porcentaje de habla en orden descendente. (1)
SELECT countries.name, languages.language, languages.percentage
FROM languages
JOIN countries ON countries.id = languages.country_id
WHERE percentage > 0.89
ORDER BY percentage DESC;


-- 5. ¿Qué consulta ejecutarías para obtener todos los países con un área de superficie menor a 501 y población mayor a 100,000? (2)
SELECT countries.name, countries.surface_area, countries.population
FROM countries 
WHERE surface_area < 501 AND population > 100000;


-- 6. ¿Qué consulta ejecutarías para obtener países solo con monarquía constitucional, un capital superior a 200 y una esperanza de vida mayor a 75 años?  (1)
SELECT countries.name, countries.government_form, countries.capital, countries.life_expectancy
FROM countries 
WHERE government_form = 'constitutional monarchy' AND capital > 200 AND life_expectancy > 75;


-- 7. ¿Qué consulta ejecutarías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires con una población mayor a 500,000 habitantes? 
-- La consulta debe devolver el nombre del país, el nombre de la ciudad, el distrito y la población.  (2)
SELECT countries.name, cities.name, cities.district, cities.population
FROM cities
JOIN countries ON countries.id = cities.country_id
WHERE countries.name = 'Argentina' AND cities.district = 'Buenos Aires' AND cities.population > 500000;


-- 8. ¿Qué consulta ejecutarías para resumir el número de países en cada región? 
-- Tu consulta debe mostrar el nombre de la región y el número de países. 
-- Además, debe ordenar el resultado por el número de países en orden descendente. (2)
SELECT region, count(name) AS countries
FROM countries
GROUP BY countries.region
ORDER BY countries DESC;




SELECT UPPER(name) 
FROM cities 
ORDER BY name 
LIMIT 5 
OFFSET 5;

SELECT name, LENGTH(name) as name_length 
FROM cities 
WHERE LENGTH(name)> 10 or LENGTH(name)< 8;

SELECT SUM(population) as C_and_S_population 
FROM cities 
WHERE region = 'C' or region = 'S';

SELECT AVG(population) as average_population 
FROM cities 
WHERE region = 'W';

SELECT COUNT(name) as amout_of_cities 
FROM cities 
WHERE region = 'E';
SELECT name FROM cities ORDER BY population LIMIT 20;
SELECT name FROM cities ORDER BY name DESC LIMIT 30;
SELECT name FROM cities ORDER BY population, region ASC;
SELECT DISTINCT region FROM cities;
SELECT name FROM cities ORDER BY region DESC, name DESC;
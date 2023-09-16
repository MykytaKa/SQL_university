SELECT * 
FROM cities 
WHERE population >= 1000000;

SELECT * 
FROM cities 
WHERE region IN ("E", "W") 
ORDER BY population DESC;

SELECT * 
FROM cities
WHERE region IN ("S", "C", "N") AND population >= 50000;

SELECT * 
FROM cities 
WHERE region IN ("E", "W", "N") and population > 150000 AND population < 350000 
ORDER BY name DESC 
LIMIT 20;

SELECT * 
FROM cities 
WHERE NOT region IN ("E", "W") 
ORDER BY population DESC 
LIMIT 10 
OFFSET 10;
SELECT cities.name, regions.name 
FROM cities, regions
WHERE cities.region = regions.uuid AND cities.population > 350000;

SELECT cities.name, cities.population, regions.name
FROM cities, regions
WHERE cities.region = regions.uuid AND regions.name = "Nord";

DROP TABLE IF EXISTS lines;
CREATE TABLE lines (
  id INT(10) NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  color VARCHAR(255) NOT NULL,
  start_station_id INT(10) NOT NULL,
  end_station_id INT(10) NOT NULL,
  PRIMARY KEY (line_id)
) 

DROP TABLE IF EXISTS stations;
CREATE TABLE stations (
  id INT(10) NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  latitude DECIMAL(10,6) NOT NULL,
  longitude DECIMAL(10,6) NOT NULL,
  next_station_id INT(10) DEFAULT NULL,
  prev_station_id INT(10) DEFAULT NULL,
  PRIMARY KEY (id)
) 

DROP TABLE IF EXISTS intersections;
CREATE TABLE intersections (
  id INT(10) NOT NULL AUTO_INCREMENT,
  first_station_id INT(10) NOT NULL,
  second_station_id INT(10) NOT NULL,
  PRIMARY KEY (id)

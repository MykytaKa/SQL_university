SELECT cities.name, regions.name 
FROM cities, regions
WHERE cities.region = regions.uuid AND cities.population > 350000;

SELECT cities.name, cities.population, regions.name
FROM cities, regions
WHERE cities.region = regions.uuid AND regions.name = "Nord";

DROP TABLE IF EXISTS lines;
CREATE TABLE lines (
  id int(256) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  color varchar(255) NOT NULL,
  PRIMARY KEY (line_id)
) 


DROP TABLE IF EXISTS schedule;
CREATE TABLE schedule (
  id int(256) unsigned NOT NULL AUTO_INCREMENT,
  stop_id int(256) NOT NULL,
  day_of_week varchar(20) NOT NULL,
  departure_time time NOT NULL,
  PRIMARY KEY (schedule_id)
) 


DROP TABLE IF EXISTS stations;
CREATE TABLE stations (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  latitude decimal(10,6) NOT NULL,
  longitude decimal(10,6) NOT NULL,
  PRIMARY KEY (id)
) 


DROP TABLE IF EXISTS stops;
CREATE TABLE stops (
  id int(256) unsigned NOT NULL AUTO_INCREMENT,
  station_id int(256) NOT NULL,
  line_id int(256) NOT NULL,
  stop_sequence int(256) NOT NULL,
  arrival_time time NOT NULL,
  PRIMARY KEY (stop_id)
) 

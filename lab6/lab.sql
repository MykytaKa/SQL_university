SELECT cities.name, regions.name 
FROM cities, regions
WHERE cities.region = regions.uuid AND cities.population > 350000;

SELECT cities.name, cities.population, regions.name
FROM cities, regions
WHERE cities.region = regions.uuid AND regions.name = "Nord";

DROP TABLE IF EXISTS lines;
CREATE TABLE lines (
  line_id int(10) NOT NULL AUTO_INCREMENT,
  line_name varchar(255) NOT NULL,
  line_color varchar(255) NOT NULL,
  PRIMARY KEY (line_id)
) 


DROP TABLE IF EXISTS schedule;
CREATE TABLE schedule (
  schedule_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  stop_id int(11) NOT NULL,
  day_of_week varchar(20) NOT NULL,
  departure_time time NOT NULL,
  PRIMARY KEY (schedule_id)
) 


DROP TABLE IF EXISTS stations;
CREATE TABLE stations (
  station_id int(11) NOT NULL AUTO_INCREMENT,
  station_name varchar(255) NOT NULL,
  latitude decimal(10,6) NOT NULL,
  longitude decimal(10,6) NOT NULL,
  PRIMARY KEY (station_id)
) 


DROP TABLE IF EXISTS stops;
CREATE TABLE stops (
  stop_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  staion_id int(11) NOT NULL,
  line_id int(11) NOT NULL,
  stop_sequence int(11) NOT NULL,
  arrival_time time NOT NULL,
  PRIMARY KEY (stop_id)
) 
CREATE DATABASE IF NOT EXISTS adgeo;
USE adgeo;

DROP TABLE IF EXISTS regions;
DROP TABLE IF EXISTS ads;

CREATE TABLE IF NOT EXISTS regions(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(1000),
coordinates VARCHAR(5000) 
);

CREATE TABLE IF NOT EXISTS ads(
adid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
regionId INT NOT NULL,
FOREIGN KEY (regionId) REFERENCES adgeo.regions(id),
filename VARCHAR(500)
);
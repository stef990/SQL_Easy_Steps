# Use the "my_database" database.
USE my_database;
# Create a table named "bath_towels" with 3 columns
CREATE TABLE bath_towels
(
code	VARCHAR(8) NOT NULL PRIMARY KEY,
name	VARCHAR(20) NOT NULL,
color	VARCHAR(20) DEFAULT "White"
);
#Insert 2 records into the "bath_towels" table.
INSERT INTO bath_towels (code,name,color)
VALUES ("821/9735","Harvest","Beige");

INSERT INTO bath_towels (code,name,color)
VALUES ("820/9735","Wine","Maroon");

SHOW TABLES;

SELECT * FROM bath_towels;
SELECT * FROM towels;

INSERT INTO bath_towels (code,name,color)
SELECT * FROM towels;
SELECT * FROM bath_towels;



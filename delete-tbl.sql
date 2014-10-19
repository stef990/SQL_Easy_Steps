#use the "my_database" database.
USE my_database;

#Create a table called "dogs" with 2 columns.
CREATE TABLE IF NOT EXISTS dogs
(
id  INT,
breed TEXT
);

# sHOW THAT THE TABLE HAS BEEN CREATED.
SHOW TABLES;
#Confirm the "dogs" table format/
EXPLAIN dogs;
#Delete the "dogs" and "fruits" tables.
DROP TABLE IF EXISTS dogs;
DROP TABLE IF EXISTS fruit;

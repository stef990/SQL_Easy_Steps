#USe the "my_Database" database.
USE my_database;
#Create a tabke called "products" with 5 columns.
CREATE TABLE IF NOT EXISTS products
(
id int unique auto_increment,
code int not null,
name varchar(25) not null,
qty int default 1,
price decimal(6,2) not null
);

#Confirm the "products" table format.
Explain products;

#Delete sample table
drop table products;

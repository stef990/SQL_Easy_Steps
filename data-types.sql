#Use the my_database database.
USE my_database;

#Create a table called "user_log" with 3 columns.
CREATE TABLE IF NOT EXISTS user_log
(
id  INT,
data  TIMESTAMP,
first_name  CHAR(20),
last_name  CHAR(20)
);

#Confirm the "user_log" table format
EXPLAIN user_log;
# Delete this sample table.
DROP TABLE user_log;

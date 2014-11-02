USE my_database;
CREATE TABLE IF NOT EXISTS cups
(
id int auto_increment primary key,
cup_pattern varchar(25)
);
CREATE TABLE IF NOT EXISTS saucers
(
id int auto_increment,
scr_pattern varchar(25), primary key(id)
);
EXPLAIN cups; EXPLAIN saucers;
DROP TABLE cups,saucers;

use my_database;
create table prints
(
id int not null,
code varchar(8) not null,
name varchar(20) not null,
primary key(id)
);
insert into prints values (1,"624/1636","Lower Manhattan");
insert into print values (2,"624/1904,"Hill Town");
insert into print values (3,"624/1681,"Roscoff Trawlers");

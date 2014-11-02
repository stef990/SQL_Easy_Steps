use my_database;
create table towels
(
code varchar(8) not null primary key,
name varchar(20) not null,
color varchar(20) default "White"
);
insert into towels (code,name,color)
values("821/7355","Dolphin","Blue");
insert into towels (color,code,name)
values("Lilac","830/1921","Daisy");
insert into towels (code,name)
values("823/7370","Star");
select * from towels;


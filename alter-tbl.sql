use my_database;
create table if not exists dishes
(
id int not null,
pattern varchar(25) not null,
price decimal(6,2)
);
explain dishes;
alter table dishes
  add primary key(id),
  add column code int unique not null,
  change pattern dish_pattern varchar(25) not null,
  drop price;
explain dishes; drop table dishes;

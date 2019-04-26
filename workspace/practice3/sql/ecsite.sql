set names utf8;
set foreign_key_checks=0;
drop database if exists logindb_hoshi;
create database logindb_hoshi;
use logindb_hoshi;

create table user(
id int,
user_name varchar(255),
password varchar(255)
);

insert into user values
(1,"yudai","0627"),
(2,"misaki","0626"),
(3,"chao","0908");

create database FMS;

use FMS;

-- create table login(
-- Id int primary key auto_increment,
-- user_name varchar(50) not null unique ,
-- password  varchar(50) not null check(password>=8)
-- );

-- drop table login;

create table passenger(
id int primary key auto_increment,
firstName varchar(50) not null,
lastName varchar(50) not null,
user_name varchar(50) not null unique,
email varchar(50) not null unique,
dob date not null,
phone bigint not null unique,
address_with_pin varchar(250) not null,
password varchar(50) not null check(password>=8) 
);

create table flight(
flightNo varchar(50) unique,
flightName varchar(50) not null,
flightDescription text not null,
flightCapacity int not null
);

create table schedule(
id int primary key auto_increment,
journeyFrom varchar(50) not null,
journeyTo varchar(50) not null,
dateofJourney date not null,
timeofJourney time not null,
costofJourney int not null,
flightNo varchar(50) not null,
constraint FK_flightNo foreign key(flightNo) references flight(flightNo) on delete cascade
);
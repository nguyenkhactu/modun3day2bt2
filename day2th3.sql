create database quanlybanhang;
use quanlybanhang;
create table customer (
Cid int not null primary key auto_increment,
cname varchar (20) not null,
cage varchar (20) not null );

create table Orders (
oid int not null auto_increment primary key,
cid int,
odate datetime ,
otatolprice varchar (20),
foreign key (cid) references customer (cid) );

create table product (
pid int not null auto_increment primary key,
pname varchar (20) not null,
pprice int );

create table Orderdetail(
oid int ,
pid int,
odqty varchar(20),
primary key(oid,pid),
foreign key(oid) references Orders(oid),
foreign key(pid) references product(pid));
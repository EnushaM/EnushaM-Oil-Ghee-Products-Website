use db;
create table ecommerce_user_info (
    id int auto_increment primary key,
    name varchar(100) not null,
    password varchar(100) not null,
    phone varchar(20) not null,
    location varchar(100) not null
);

CREATE SCHEMA IF NOT EXISTS netology;
CREATE TABLE IF NOT EXISTS CUSTOMERS
(
    id int primary key auto_increment,
    name varchar(255) not null,
    surname varchar(255),
    age int check ( age > 0 ), check ( age < 150 ),
    phone_number varchar(255) not null default 'unknown'
);

CREATE TABLE IF NOT EXISTS ORDERS
(
    id int auto_increment primary key,
    date timestamp not null default now(),
    customer_id int,
    product_name varchar(255) not null,
    amount int not null check ( amount > 0 ),
    FOREIGN KEY (customer_id) REFERENCES СUSTOMERS(id)

);
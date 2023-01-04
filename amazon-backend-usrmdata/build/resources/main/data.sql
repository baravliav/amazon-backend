DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS products;

CREATE TABLE users (
    user_id int(11) unsigned NOT NULL AUTO_INCREMENT,
    first_name varchar(300) NOT NULL DEFAULT '',
    last_name varchar(300) NOT NULL DEFAULT '',
    email varchar(300) NOT NULL DEFAULT '',
    phone long(11) unsigned NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE orders (
    order_id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned NOT NULL ,
    startDate date NOT NULL,
    shipping_address varchar(300) NOT NULL DEFAULT '',
    total_price int(11) unsigned NOT NULL,
    status BIT(1) NOT NULL,
    PRIMARY KEY (order_id)
);

CREATE TABLE products (
    product_id int(11) unsigned NOT NULL AUTO_INCREMENT,
    stock int(11) unsigned NOT NULL ,
    title varchar(300) NOT NULL DEFAULT '',
    price int(11) unsigned NOT NULL,
    PRIMARY KEY (product_id)
);

INSERT INTO products (stock, title, price) VALUES
('111', 'chair', '55'),
('222', 'fork', '5'),
('333', 'headphones', '120'),
('444', 'iphone', '900'),
('555', 'glasses', '80'),
('666', 'laptop', '1200'),
('777', 'notebook', '12'),
('888', 'brush', '7'),
('999', 'candy', '3'),
('123', 'table', '140'),
('134', 'ipad', '1100');

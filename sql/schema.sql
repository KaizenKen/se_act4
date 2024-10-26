create table customers(
  customer_id int PRIMARY KEY AUTO_INCREMENT,
  customer_name varchar(255),
  customer_contact varchar(255),
  customer_address varchar(255)
);

create table riders(
  rider_id int PRIMARY KEY AUTO_INCREMENT,
  rider_name varchar(255),
  rider_contact varchar(255)
);

create table restaurants(
  restaurant_id int PRIMARY KEY AUTO_INCREMENT,
  restaurant_name varchar(255),
  restaurant_location varchar(255)
);

create table items(
  item_id int PRIMARY KEY AUTO_INCREMENT,
  restaurant_id int,
  item_name varchar(255),
  item_price int
);

create table orders(
  order_id int PRIMARY KEY AUTO_INCREMENT,
  customer_id int,
  rider_id int,
  ordered_items int,
  delivery_status varchar(255),
  date_ordered TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into restaurants(restaurant_name, restaurant_location)
values('Jollibee', 'Patindig Araw Road, corner Malagasang Rd, Imus, Cavite');

insert into restaurants(restaurant_name, restaurant_location)
values('Mcdonalds', 'Lancaster New City, Advincula Ave, Imus, 4103 Cavite');

insert into restaurants(restaurant_name, restaurant_location)
values('Chowking', 'Aguinaldo Hwy, Imus, Cavite');

insert into items(restaurant_id, item_name, item_price)
values(1, '1-pc Chicken Joy', '89');
insert into items(restaurant_id, item_name, item_price)
values(1, 'Yumburger', '40');
insert into items(restaurant_id, item_name, item_price)
values(1, 'Jolly Sphagetti', '60');
insert into items(restaurant_id, item_name, item_price)
values(1, 'Big Mac', '179');

insert into items(restaurant_id, item_name, item_price)
values(2, '1-pc Chicken McDo', '99');
insert into items(restaurant_id, item_name, item_price)
values(2, 'Big Mac', '179');
insert into items(restaurant_id, item_name, item_price)
values(2, 'Burger McDo w Fries Happy Meal', '129');

insert into items(restaurant_id, item_name, item_price)
values(3, 'Siomai Chao Fan', '107');
insert into items(restaurant_id, item_name, item_price)
values(3, '1-pc Chinese-Styled Fried Chicken', '96');
insert into items(restaurant_id, item_name, item_price)
values(3, 'Imperial Chicken Chop with White Rice', '81');
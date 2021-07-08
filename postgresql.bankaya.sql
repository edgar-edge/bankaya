CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	phone_number VARCHAR (30) ,
	curp VARCHAR (18) NOT NULL,
	rfc VARCHAR (20),
	address VARCHAR (80)
);



CREATE TABLE items (
	item_id int unique PRIMARY KEY,
	item_name VARCHAR (50) NOT NULL,
	item_price float
);

CREATE TABLE items_bought (
  customer_id int not null,
  item_id INT not null,
  order_number INT NOT NULL,
  date_item timestamp NOT NULL,
  price float,
  comments_item varchar(100),
  PRIMARY KEY (customer_id, item_id),
  FOREIGN KEY (customer_id)
      REFERENCES customer (customer_id),
  FOREIGN KEY (item_id)
      REFERENCES items (item_id)
);

INSERT INTO customer(first_name, last_name, phone_number, curp, rfc, address)
VALUES('Edgar','Canseco','951 2288-204', 'CAGEFA3F29HOCNRD08', 'CAQG9880328P9', 'Oaxaca de Juarez, Oax'),
      ('Oscar','Canseco','951 1438989', 'ADHRFA3F29HOCNRD04', 'CAQG98803ASCV', 'Guadalajara, Jalisco'),
      ('Michael','Owen','9561411203', 'ADHRADE129HOCNRD05', 'ASCF9880328P9', 'Monterrey, Nuevo Leron'),
      ('Roman','Garcia','951 42-88-204', 'RFGA3R3F29HOCNRD0|', 'DGAS3480328P9', 'Atizapan, Estado de México'),
      ('Lucia','Ramirez','95 55588-204', 'ADRFGAD23RHOCNRD02', 'CFAS988032FG4', 'Colonia del Valle, Ciudad de México'),
      ('Alejandra','Castillo','954 1288-294', 'FGADERFQ39HOCNRD06', 'CAQG98AD358P9', 'Ciudad Andina, Peru'),
      ('Sara','Nuñez',' ', 'CAGQ980329HCNRP08', 'AASFFA3F29HOCNRD08', 'Santader, Colombia'),
      ('Jhon','Petrucci','924 2418442', 'FADEGA3F29HOCNRD08', 'ADCFVA23328P9', 'Paris, Francia');
     
INSERT INTO items(item_id, item_name, item_price)
VALUES(324, 'Pizza de tres quesos', 215.4),
      (5235, 'Torta cubana', 54),
      (32, 'Hamburguesa doble', 75.99),
      (5551, 'Mole con pollo', 149.99),
      (314, 'Cecina enchilada', 85.5),
      (4321, 'Nuggets de pollo', 65),
      (41, 'Coca cola', 19.99),
      (8765, 'Jarra de clericor', 129.99);
     
INSERT INTO items_bought(customer_id, item_id, order_number, date_item, price, comments_item)
VALUES(1,5551, 3, '2021-07-07 18:10:00-01', 215.12, 'Deliciosa comida' ),
      (3,8765, 78, '2021-07-06 01:11:11-02', 145.23, 'So delicious'),
      (1, 41, 34, '2021-07-07 15:12:34-04', 500, ' '),
      (7, 5235, 12,'2021-07-01 12:13:11-04', 250, 'Le faltó cocido a la carne'),
      (7, 324, 11, '2021-07-03 11:14:43-05', 124, 'Mas o menos, le faltó queso'),
      (2, 4321, 43,'2021-07-01 10:15:32-06', 215, 'uwu'),
      (5, 41, 10, '2021-06-07 08:16:15-07', 212, ' '),
      (8, 5235, 22,'2021-06-12 16:18:12-08', 800, 'rico!');     

select * from customer;
select * from items;
select * from items_bought;     

--Table-Person
--#1
CREATE TABLE person
(
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER,
    height INTEGER,
    city TEXT,
    favorite_color TEXT
);

--#2
INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Ryan', 24 , 186 , 'Fairvirew', 'Red');

INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Austin', 26 , 175 , 'Draper', 'Blue');

INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Keaton', 28 , 170 , 'Ogden', 'Green');

INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Sam', 28 , 166 , 'Huston', 'Orange');

INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Nolan', 25 , 175 , 'Portland', 'Black');

--#3
SELECT *
FROM person
ORDER BY height DESC;
-- #4
SELECT *
FROM person
ORDER BY height ASC;
-- #5
SELECT *
FROM person
ORDER BY age DESC;
-- #6
SELECT *
FROM person
WHERE age > 20;
-- 7
SELECT *
FROM person
WHERE age = 18;
-- 8
SELECT *
FROM person
WHERE age < 20 AND age > 30;
-- 9
SELECT *
FROM person
WHERE age != 27;
-- 10
SELECT *
FROM person
WHERE favorite_color != 'Red';
-- 11
SELECT *
FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';
-- 12
SELECT *
FROM person
WHERE favorite_color = 'Green' OR favorite_color = 'Orange';
-- 13
SELECT *
FROM person
WHERE favorite_color IN ('Orange','Green','Blue');
-- 14
SELECT *
FROM person
WHERE favorite_color IN ('Yellow','Purple');

-- Table-orders --
-- 1
CREATE TABLE orders
(
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name TEXT,
    product_price DECIMAL,
    quantity INT
);
-- 2
INSERT INTO orders
    ( person_id, product_name , product_price, quantity )
VALUES
    (0, 'Sofa', 650.99, 2);

INSERT INTO orders
    ( person_id, product_name , product_price, quantity )
VALUES
    (1, 'Desk', 349.19, 1);

INSERT INTO orders
    ( person_id, product_name , product_price, quantity )
VALUES
    (2, 'Laptop', 499.99, 5);

INSERT INTO orders
    ( person_id, product_name , product_price, quantity )
VALUES
    (3, 'iPad', 300.99, 4);

INSERT INTO orders
    ( person_id, product_name , product_price, quantity )
VALUES
    (4, 'Chair', 15.50, 10);

-- 3
SELECT *
FROM orders;
-- 4
SELECT sum(quantity)
FROM orders;
-- 5
SELECT SUM(product_price * quantity )
FROM orders;
-- 6
SELECT SUM( product_price * quantity )
FROM orders
WHERE person_id = 3;


-- TABLE Artist --
-- 1
INSERT INTO artist
    (name)
VALUES
    ('Luke Combs');

INSERT INTO artist
    (name)
VALUES
    ('Mayday Parade');

INSERT INTO artist
    (name)
VALUES
    ('Eminem');
-- 2
SELECT *
FROM artist
ORDER BY name DESC
 LIMIT 10;
-- 3
SELECT * FROM artist
ORDER BY name ASC
 LIMIT 5;
-- 4
SELECT *
FROM artist
WHERE name LIKE 'Black%'
-- 5
SELECT *
FROM artist
WHERE name LIKE '%Black%'

--Table Employee --
-- 1
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary'
-- 2
SELECT *
FROM employee
ORDER BY birth_date DESC
LIMIT 1;
-- 3
SELECT * FROM employee
ORDER BY birth_date ASC
LIMIT 1;
-- 4
SELECT *
FROM employee
WHERE reports_to = 2;
-- 5
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

-- Table invoice --
-- 1
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';
-- 2
SELECT MAX(total)
FROM invoice;
-- 3
SELECT MIN(total)
FROM invoice;
-- 4
SELECT *
FROM invoice
WHERE total > 5;
-- 5
SELECT COUNT(*)
FROM invoice
WHERE total < 5;
-- 6
SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA','TX','AZ')
-- 7
SELECT AVG(total)
FROM invoice;
-- 8
SELECT SUM(total)
FROM invoice;
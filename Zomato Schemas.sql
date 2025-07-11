-- Zomato Data Analysis Using SQL

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(25),
red_date DATE
);

CREATE TABLE restaurants (
restaurant_id INT PRIMARY KEY,
restaurant_name VARCHAR(55),
city VARCHAR(15),
opening_hours VARCHAR(55)
);

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT, --from cx table
restaurant_id INT, --from restaurants table
order_item VARCHAR(55),
order_date DATE,
order_time TIME,
order_status VARCHAR(55),
total_amount FLOAT,
CONSTRAINT fk_customers FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
CONSTRAINT fk_restaurants FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

CREATE TABLE riders (
rider_id INT PRIMARY KEY,
rider_name VARCHAR(55),
sign_up DATE
);

CREATE TABLE deliveries (
delivery_id INT PRIMARY KEY,
order_id INT, --from ox table
delivery_status VARCHAR(35),
delivery_time TIME,
rider_id INT, -- from rx table
CONSTRAINT fk_orders FOREIGN KEY (order_id) REFERENCES orders(order_id),
CONSTRAINT fk_riders FOREIGN KEY (rider_id) REFERENCES riders(rider_id)
);
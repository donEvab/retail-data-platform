CREATE SCHEMA IF NOT EXISTS raw;

DROP TABLE IF EXISTS raw.payments;
DROP TABLE IF EXISTS raw.order_items;
DROP TABLE IF EXISTS raw.orders;
DROP TABLE IF EXISTS raw.products;
DROP TABLE IF EXISTS raw.customers;

CREATE TABLE raw.customers (
    customer_id TEXT PRIMARY KEY,
    customer_name TEXT NOT NULL,
    email TEXT NOT NULL,
    city TEXT NOT NULL,
    registered_date DATE NOT NULL
);

CREATE TABLE raw.products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    unit_price NUMERIC(10, 2) NOT NULL
);

CREATE TABLE raw.orders (
    order_id TEXT PRIMARY KEY,
    customer_id TEXT NOT NULL,
    order_date DATE NOT NULL,
    status TEXT NOT NULL
);

CREATE TABLE raw.order_items (
    order_item_id TEXT PRIMARY KEY,
    order_id TEXT NOT NULL,
    product_id TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price INTEGER NOT NULL
);

CREATE TABLE raw.payments (
    payment_id TEXT PRIMARY KEY,
    order_id TEXT NOT NULL,
    payment_date DATE NOT NULL,
    payment_method TEXT NOT NULL,
    amount INTEGER NOT NULL
);
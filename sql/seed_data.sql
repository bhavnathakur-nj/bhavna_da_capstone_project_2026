USE Capstone;

SET GLOBAL local_infile = 1;


-- -------------------------------------------------------------------------------------
LOAD DATA LOCAL INFILE 'C:/Users/njnit/OneDrive/Desktop/Project_Capstone_2026/data/customers.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    `customer_id`,
    `name`,
    `city`,
    `city_tier`,
    `signup_date`,
    `acquisition_source`
);

-- -------------------------------------------------------------------------------------
LOAD DATA LOCAL INFILE 'C:/Users/njnit/OneDrive/Desktop/Project_Capstone_2026/data/products.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    `product_id`,
    `product_name`,
    `category`,
    `price`
);


-- -------------------------------------------------------------------------------------
LOAD DATA LOCAL INFILE 'C:/Users/njnit/OneDrive/Desktop/Project_Capstone_2026/data/orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    order_id,
    customer_id,
    product_id,
    order_date,
    quantity,
    @discount_pct,
    payment_method,
    @rating,
    returned
)
SET
    discount_pct = NULLIF(TRIM(@discount_pct), ''),
    rating       = NULLIF(TRIM(@rating), '');
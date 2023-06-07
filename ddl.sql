-- do we need 2 different files? no, but it can be helpful because they ARE different

-- create customer table
-- create invoice table
-- create sale table
-- create product table


-- create customer table

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    age INTEGER
    -- no trailing commas!
)
-- create invoice table

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    invoice_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

select * from customer;
-- we can run queries right here and check our db!

-- create sale table

CREATE TABLE sale(
    sale_id SERIAL PRIMARY KEY,
    invoice_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id)
    -- FOREIGN KEY (product_id) REFERENCES product(product_id)
)

-- create product table

CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    price NUMERIC(8, 2) NOT NULL,
    p_name VARCHAR(50) NOT NULL,
    p_desc VARCHAR,
    p_image VARCHAR
)

-- fix our NOT foreign key!

ALTER TABLE sale
ADD FOREIGN KEY (product_id) REFERENCES product(product_id);

ALTER TABLE product
ADD UNIQUE(p_name);


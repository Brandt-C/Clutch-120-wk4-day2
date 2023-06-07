-- INSERT INTO customer(parameters) VALUES(ARGUMENT), (ANOTHER ARGUEMENT)
INSERT INTO customer(
    first_name, 
    last_name,
    email, 
    age
) VALUES (
    'Brendan',
    'Carlson',
    'awesome@ct.com',
    78
)

INSERT INTO customer(
    first_name, 
    last_name,
    email, 
    age
) VALUES (
    'Brandt',
    'Carlson',
    'bc@ct.com',
    890
), (
    'Rachel',
    'W',
    'RW@ct.com',
    23
)

INSERT INTO sale (
    invoice_id,
    product_id
) VALUES (1, 1)

-- ORDER MATTERS!

INSERT INTO product (
    price,
    p_name, 
    p_desc
) VALUES (
    499.99,
    'LG 55" lkadjsf;lkas TV',
    'it is a 55" TV from LG lakjsd f a;dksjlf  ja;lsdkjf ;l kajsd f;lk a;kdsjfowie fe;l a;osidjf ;lakdjs ;lakjsh'
    
)

INSERT INTO product (
    price,
    p_name, 
    p_desc
) VALUES (
    40.99,
    'tiny-tv',
    'it is a 5" TV from ???? kjsd f a;dksjlf  ja;lsdkjf ;l kajsd f;lk a;kdsjfowie fe;l a;osidjf ;lakdjs ;lakjsh'
    
), (
    102568.54,
    'expensive product',
    'Pricey whatever it is'
)

select * from product

INSERT INTO invoice (customer_id) VALUES (1)

-- INSERT INTO invoice (customer_id) VALUES (7)

INSERT INTO sale (
    invoice_id,
    product_id
) VALUES (1, 1), (1, 2)
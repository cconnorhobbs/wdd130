-- Problem #1 

USE art_gallery;

SELECT * FROM artist;

INSERT INTO artist (artist_id, fname, mname, lname, dob, dod, country, local_artist)
VALUES
	(25, 'Johannes', NULL, 'Vermeer', 1632, 1674, 'Netherlands', 'n');
    
-- Problem #2
SELECT DISTINCT fname, mname, lname, dob, dod, country local_artist
FROM artist
ORDER BY lname;

-- Problem #3
UPDATE artist
SET dod = 1675
WHERE fname = 'Johannes';

-- Problem #4
DELETE FROM artist
WHERE fname = 'Johannes';

-- Problem #5

USE bike;

SELECT first_name, last_name, phone
FROM customer
WHERE city = 'Houston'
AND phone IS NOT NULL;

-- Problem #6
SELECT product_name, list_price, list_price - 500 AS discount_price
FROM product
WHERE list_price > 5000
ORDER BY list_price DESC;

-- Problem #7
SELECT first_name, last_name, email
FROM staff
WHERE store_id > 1;

-- Problem #8
SELECT product_name, model_year, list_price
FROM product
WHERE product_name LIKE '%spider%';

-- Problem #9
SELECT product_name, list_price
FROM product
WHERE list_price BETWEEN 500 AND 550
ORDER BY list_price ASC;

-- Problem #10
SELECT first_name, last_name, phone, street, city, state, zip_code
FROM customer
WHERE (phone IS NOT NULL)
AND (city LIKE '%ach%' OR city LIKE '%och%' OR last_name = 'William')
LIMIT 5;
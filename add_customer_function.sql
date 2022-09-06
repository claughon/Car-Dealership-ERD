CREATE OR REPLACE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO "Customer"
	VALUES(_customer_id, _first_name, _last_name);
	
END;
$$

SELECT add_customer(3, 'Claren', 'Anderson')

SELECT add_customer(4, 'Bruce', 'Levine')

SELECT add_customer(5, 'Ezra', 'Laughon')

SELECT *
FROM "Customer"
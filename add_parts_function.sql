CREATE OR REPLACE FUNCTION add_parts(_part_id INTEGER, _price NUMERIC(8,2), _amount INTEGER)
RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO "Parts"
	VALUES(_part_id, _price, _amount);
	
END;
$$

SELECT add_parts(2, 100.00, 1)

SELECT *
FROM "Parts"
CREATE OR REPLACE FUNCTION add_car(_car_id INTEGER, _VIN VARCHAR, _make VARCHAR, _model VARCHAR, _year INTEGER, _price NUMERIC(8,2))
RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO "Car"
	VALUES(_car_id, _VIN, _make, _model, _year, _price);
	
END;
$$

SELECT add_car(3, '456CRUISER789', 'Ford', 'Lightning', 2023, 96875.00);

SELECT add_car(4, '123LUXURY567', 'Cadillac', 'CT5-V', 2022, 83999.00);

SELECT add_car(5, '456ECOMODE789', 'Tesla', 'X', 2022, 124999.00)

SELECT *
FROM "Car"


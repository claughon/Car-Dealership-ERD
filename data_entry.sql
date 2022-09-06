INSERT INTO "Car"(
	"car_id",
	"VIN",
	"make",
	"model",
	"year",
	"price",
	"staff_id",
	"customer_id"
) VALUES(
	1,
	'3456THEBEST789',
	'Toyota',
	'RAV4',
	2022,
	44000.00,
	1,
	1
);

INSERT INTO "Car"(
	"car_id", 
	"VIN",
	"make",
	"model",
	"year",
	"price",
	"staff_id",
	"customer_id"
)
VALUES(
	2,
	'1234FASTER678',
	'Chevy',
	'Corvette',
	2022,
	79850.00,
	3,
	2
);

INSERT INTO "Customer" (
	"customer_id",
	"first_name",
	"last_name"
) VALUES (
	1,
	'Ruth',
	'Laughon'
);

INSERT INTO "Customer" (
	"customer_id",
	"first_name",
	"last_name"
) VALUES(
	2,
	'Joe',
	'Anderson'
);

INSERT INTO "Invoice" (
	"invoice_id",
	"customer_id",
	"car_id",
	"staff_id",
	"service_id",
	"part_id",
	"sub_total",
	"date"
) VALUES (
	1,
	1,
	1,
	1,
	1,
	1,
	43999.99,
	'now'
);

INSERT INTO "Invoice" (
	"invoice_id",
	"customer_id",
	"car_id",
	"staff_id",
	"service_id",
	"part_id",
	"sub_total",
	"date"
) VALUES(
	2,
	2,
	2,
	3,
	2,
	1,
	79999.00,
	'now'
);

INSERT INTO "Parts" (
	"part_id",
	"price",
	"amount"
) VALUES (
	1,
	50.00,
	1
);

INSERT INTO "Service" (
	"service_id",
	"date",
	"customer_id",
	"staff_id",
	"part_id",
	"car_id"
) VALUES (
	1,
	'now',
	1,
	2,
	1,
	1
);

INSERT INTO "Staff" (
	"staff_id",
	"first_name",
	"last_name",
	"email",
	"phone"
) VALUES (
	1,
	'Jeff',
	'Matthews',
	'jmatthews@toyo.com',
	'1(800)-123-4567'
);

INSERT INTO "Staff" (
	"staff_id",
	"first_name",
	"last_name",
	"email",
	"phone"
) VALUES (
		2, 
	'Dwayne',
	'Johnson',
	'djohnson@toyo.com',
	'1(800)-222-6688'
);

INSERT INTO "Staff" (
	"staff_id",
	"first_name",
	"last_name",
	"email",
	"phone"
) VALUES(
	3,
	'Kevin',
	'Hert',
	'khert@toyo.com',
	'1(800)-234-6789'
);

CREATE TABLE "Parts" (
  "part_id" SERIAL,
  "price" NUMERIC(8,2),
  "amount" INTEGER,
  PRIMARY KEY ("part_id")
);

CREATE TABLE "Staff" (
  "staff_id" SERIAL,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR(60),
  "email" VARCHAR(60),
  "phone" VARCHAR(20),
  PRIMARY KEY ("staff_id")
);

CREATE TABLE "Invoice" (
  "invoice_id" SERIAL,
  "customer_id" INTEGER,
  "car_id" INTEGER,
  "staff_id" INTEGER,
  "service_id" INTEGER,
  "part_id" INTEGER,
  "sub_total" NUMERIC(8,2),
  "date" TIMESTAMP WITHOUT TIME ZONE,
  PRIMARY KEY ("invoice_id"),
  CONSTRAINT "FK_Invoice.part_id"
    FOREIGN KEY ("part_id")
      REFERENCES "Parts"("part_id"),
  CONSTRAINT "FK_Invoice.staff_id"
    FOREIGN KEY ("staff_id")
      REFERENCES "Staff"("staff_id")
);

CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR(60),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Service" (
  "service_id" SERIAL,
  "date" TIMESTAMP WITHOUT TIME ZONE,
  "customer_id" INTEGER,
  "staff_id" INTEGER,
  "part_id" INTEGER,
  "car_id" INTEGER,
  PRIMARY KEY ("service_id"),
  CONSTRAINT "FK_Service.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id"),
  CONSTRAINT "FK_Service.part_id"
    FOREIGN KEY ("part_id")
      REFERENCES "Parts"("part_id"),
  CONSTRAINT "FK_Service.staff_id"
    FOREIGN KEY ("staff_id")
      REFERENCES "Staff"("staff_id")
);

CREATE TABLE "Car" (
  "car_id" SERIAL,
  "VIN" VARCHAR(60),
  "make" VARCHAR(60),
  "model" VARCHAR(60),
  "year" INTEGER,
  "price" NUMERIC(8,2),
  "staff_id" INTEGER,
  "customer_id" INTEGER,
  PRIMARY KEY ("car_id"),
  CONSTRAINT "FK_Car.staff_id"
    FOREIGN KEY ("staff_id")
      REFERENCES "Staff"("staff_id"),
  CONSTRAINT "FK_Car.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id")
);
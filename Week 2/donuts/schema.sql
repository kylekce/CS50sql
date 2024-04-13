CREATE TABLE "ingredients" (
    "id",
    "name" TEXT NOT NULL,
    "price" REAL NOT NULL,
    "per_unit" TEXT NOT NULL,
    PRIMARY KEY ("id")
)

CREATE TABLE "donuts" (
    "id",
    "name" TEXT NOT NULL,
    "gluten_free" INTEGER NOT NULL CHECK("gluten_free" IN (0, 1)),
    "price" REAL NOT NULL,
    "ingredients" INTEGER NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("ingredients") REFERENCES "ingredients" ("id")
)

CREATE TABLE "history" (
    "id",
    "customer_id" INTEGER NOT NULL,
    "order_number" INTEGER NOT NULL,
    "date" TEXT NOT NULL,
    "total" REAL NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("order_number") REFERENCES "orders" ("order_number")
)


CREATE TABLE "customers" (
    "id",
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY ("id")
)

CREATE TABLE "orders" (
    "id",
    "order_number" INTEGER NOT NULL,
    "donuts" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL,
    "customer" INTEGER NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donuts") REFERENCES "donuts" ("id"),
    FOREIGN KEY ("customer") REFERENCES "customers" ("id")
)
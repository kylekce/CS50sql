CREATE TABLE "ingredients" (
    "id",
    "name" TEXT NOT NULL,
    "price" REAL NOT NULL,
    "per_unit" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "donuts" (
    "id",
    "name" TEXT NOT NULL,
    "gluten_free" INTEGER NOT NULL CHECK("gluten_free" IN (0, 1)),
    "price" REAL NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "donut_ingredients" (
    "id",
    "donut_id" INTEGER NOT NULL,
    "ingredient_id" INTEGER NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts" ("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES "ingredients" ("id")
);

CREATE TABLE "customers" (
    "id",
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
    "id",
    "order_number" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "donut_id" INTEGER NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("customer_id") REFERENCES "customers" ("id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts" ("id")
);
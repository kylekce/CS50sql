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

CREATE TABLE "orders" (
    "id",
    "donut_id" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL,
    "total_price" REAL NOT NULL,
    "order_date" TEXT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts" ("id")
)
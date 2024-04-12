CREATE TABLE "passengers"
(
    "id",
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "airlines"
(
    "id",
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK("concourse" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),  
    PRIMARY KEY ("id")
);

CREATE TABLE "flights"
(
    "id",
    "flight_number" TEXT NOT NULL,
    "origin" TEXT NOT NULL,
    "destination" TEXT NOT NULL,
    "duration" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "check_ins"
(
    "id",
    "flight_id" INTEGER NOT NULL,
    "passenger_id" INTEGER NOT NULL,
    "date" TEXT NOT NULL,
    "time" TEXT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("flight_id") REFERENCES "flights" ("id"),
    FOREIGN KEY ("passenger_id") REFERENCES "passengers" ("id")
);
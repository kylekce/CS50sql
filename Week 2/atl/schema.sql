CREATE TABLE "passengers"
(
    "id",
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "check_ins"
(
    "id",
    "passenger_id" INTEGER NOT NULL,
    "check_in_time" TIMESTAMP NOT NULL,
    "check_out_time" TIMESTAMP,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("passenger_id") REFERENCES "passengers" ("id")
);
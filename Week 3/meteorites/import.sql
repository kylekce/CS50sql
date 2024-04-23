-- CREATE TABLE "meteorites_temp" (
--     "name" TEXT, 
--     "id",
--     "nametype" TEXT,
--     "class" TEXT,
--     "mass" REAL,
--     "discovery" TEXT,
--     "year" INTEGER,
--     "lat" REAL,
--     "long" REAL,
--     PRIMARY KEY ("id")
-- );

-- .import --csv --skip 1 meteorites.csv meteorites_temp

CREATE TABLE "meteorites_temp" (
    "id",
    "name" TEXT, 
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY ("id")
);

INSERT INTO meteorites 
SELECT * FROM meteorites_temp;
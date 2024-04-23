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

CREATE TABLE "meteorites" (
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

INSERT INTO "meteorites" 
SELECT "id", "name", "nametype", "class", "mass", "discovery", "year", "lat", "long"
FROM "meteorites_temp";
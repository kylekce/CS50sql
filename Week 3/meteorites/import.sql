CREATE TABLE "meteorites_temp" (
    "name" TEXT, 
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY ("id")
);

CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name" TEXT, 
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT CHECK("discovery" IN ('Fell', 'Found')),
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY ("id")
);

.import --csv --skip 1 meteorites.csv meteorites_temp

DELETE FROM "meteorites_temp"
WHERE "nametype" LIKE 'Relict';

UPDATE "meteorites_temp"
SET "mass" = ROUND("mass", 2), "lat" = ROUND("lat", 2), "long" = ROUND("long", 2)
WHERE "mass" IS NOT NULL;

UPDATE "meteorites_temp"
SET "mass" = NULL, "year" = NULL, "lat" = NULL, "long" = NULL
WHERE "mass" = 0 OR "year" = 0 OR "lat" = 0 OR "long" = 0;

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long"
FROM "meteorites_temp"
ORDER BY "year" ASC, "name" ASC;

-- DROP TABLE "meteorites_temp";
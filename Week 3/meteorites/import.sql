CREATE TABLE "meteorites_temp" (
    "name", 
    "id",
    "nametype",
    "class",
    "mass",
    "discovery",
    "year",
    "lat",
    "long",
    PRIMARY KEY ("id")
);

.import --csv --skip 1 meteorites.csv meteorites_temp

UPDATE "meteorites_temp"
SET "mass" = NULL, "year" = NULL, "lat" = NULL, "long" = NULL
WHERE "mass" = '' OR "year" = '' OR "lat" = '' OR "long" = '';

UPDATE "meteorites_temp"
SET "mass" = ROUND("mass", 2), "lat" = ROUND("lat", 2), "long" = ROUND("long", 2)
WHERE "mass" IS NOT NULL;

DELETE FROM "meteorites_temp"
WHERE "nametype" = 'Relict';

CREATE TABLE "meteorites" (
    "id",
    "name" TEXT, 
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT CHECK("discovery" IN ('Fell', 'Found'))
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY ("id")
);

INSERT INTO "meteorites" 
SELECT "name", "nametype", "class", "mass", "discovery", "year", "lat", "long"
FROM "meteorites_temp"
ORDER BY "year" DESC, "name" ASC;

DROP TABLE "meteorites_temp";
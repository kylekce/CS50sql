CREATE TABLE "sentences_temp" (
    "phrase" TEXT
);

INSERT INTO "sentences_temp" ("phrase")
SELECT substr("sentence", 98, 4) 
FROM "sentences"
WHERE "ID" = 14;

INSERT INTO "sentences_temp" ("phrase")
SELECT substr("sentence", 3, 5) 
FROM "sentences"
WHERE "ID" = 114;

INSERT INTO "sentences_temp" ("phrase")
SELECT substr("sentence", 72, 9) 
FROM "sentences"
WHERE "ID" = 618;

INSERT INTO "sentences_temp" ("phrase")
SELECT substr("sentence", 7, 3) 
FROM "sentences"
WHERE "ID" = 630;

INSERT INTO "sentences_temp" ("phrase")
SELECT substr("sentence", 12, 5) 
FROM "sentences"
WHERE "ID" = 932;

INSERT INTO "sentences_temp" ("phrase")
SELECT substr("sentence", 50, 7) 
FROM "sentences"
WHERE "ID" = 2230;

INSERT INTO "sentences_temp" ("phrase")
SELECT substr("sentence", 44, 10) 
FROM "sentences"
WHERE "ID" = 2346;

INSERT INTO "sentences_temp" ("phrase")
SELECT substr("sentence", 14, 5) 
FROM "sentences"
WHERE "ID" = 3041;

CREATE VIEW "sentences_temp" AS
SELECT "phrase" 
FROM "sentences_temp";
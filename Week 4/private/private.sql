CREATE TEMPORARY VIEW "message" AS
SELECT "phrase" 
FROM "message";

INSERT INTO "message" ("phrase")
SELECT substr("sentence", 98, 4) 
FROM "sentences"
WHERE "ID" = 14;

INSERT INTO "message" ("phrase")
SELECT substr("sentence", 3, 5) 
FROM "sentences"
WHERE "ID" = 114;

INSERT INTO "message" ("phrase")
SELECT substr("sentence", 72, 9) 
FROM "sentences"
WHERE "ID" = 618;

INSERT INTO "message" ("phrase")
SELECT substr("sentence", 7, 3) 
FROM "sentences"
WHERE "ID" = 630;

INSERT INTO "message" ("phrase")
SELECT substr("sentence", 12, 5) 
FROM "sentences"
WHERE "ID" = 932;

INSERT INTO "message" ("phrase")
SELECT substr("sentence", 50, 7) 
FROM "sentences"
WHERE "ID" = 2230;

INSERT INTO "message" ("phrase")
SELECT substr("sentence", 44, 10) 
FROM "sentences"
WHERE "ID" = 2346;

INSERT INTO "message" ("phrase")
SELECT substr("sentence", 14, 5) 
FROM "sentences"
WHERE "ID" = 3041;

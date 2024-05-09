CREATE VIEW "message" AS
SELECT "phrase" FROM "message"

INSERT INTO "message" ("phrase")
VALUES (
    SELECT substr("sentence", 1, 5) 
    FROM ( 
        SELECT "sentence" 
        FROM "sentences" 
        WHERE "ID" = 14
    )

);
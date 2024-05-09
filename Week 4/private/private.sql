CREATE VIEW "message" AS
SELECT "phrase" FROM "message"

INSERT INTO "message" ("phrase")
VALUES (
    SELECT substr("sentence", 98, 4) 
    FROM ( 
        SELECT "sentence" 
        FROM "sentences" 
        WHERE "ID" = 14
    )
);
CREATE VIEW "total" AS
SELECT SUM("families")
FROM "census";
WHERE
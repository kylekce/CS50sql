CREATE VIEW "total" AS
SELECT SUM("families")
FROM "census"
GROUP BY "locality";
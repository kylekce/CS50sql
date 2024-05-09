CREATE VIEW "available" AS
SELECT "id", "property_type", "host_name", "accommodates", "date"
FROM "availabilities"
WHERE "available" = 'TRUE';
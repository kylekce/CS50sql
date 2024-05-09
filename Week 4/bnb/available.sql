CREATE VIEW "available" AS
SELECT "listing_id", "property_type", "host_name", "accommodates", "date"
FROM "availabilities"
WHERE "available" = 'TRUE';
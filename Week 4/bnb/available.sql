CREATE VIEW "available" AS
SELECT "listing_id", "property_type", "host_name", "accommodates", "date"
FROM "availabilities" 
JOIN "listings" ON "availabilities"."listing_id" = "listings"."id"
WHERE "available" = 'TRUE';
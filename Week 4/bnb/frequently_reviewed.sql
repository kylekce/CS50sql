CREATE VIEW "frequently_reviewed" AS
SELECT "listing_id", "property_type", "host_name", COUNT("listing_id") AS "reviews"
FROM "reviews"
JOIN "listings" ON "reviews"."listing_id" = "listings"."id"
GROUP BY "listing_id"
ORDER BY "reviews" DESC, "property_type" ASC, "host_name" ASC
LIMIT 100;
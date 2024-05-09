CREATE VIEW "frequently_reviewed" AS
SELECT "listing_id", "property_type", "host_name", "reviews"
FROM "reviews"
ORDER BY "reviews" DESC, "property_type" ASC, "host_name" ASC;
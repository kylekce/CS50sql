CREATE VIEW "frequently_reviewed" AS
SELECT "id", "property_type", "host_name", "reviews"
FROM "listings"
ORDER BY "reviews" DESC, "property_type" ASC, "host_name" ASC;
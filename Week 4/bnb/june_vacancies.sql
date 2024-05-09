CREATE VIEW "june_vacancies" AS
SELECT "listing_id", "property_type", "host_name", COUNT("listing_id") AS "days vacant"
FROM "availabilities"
JOIN "listings" ON "availabilities"."listing_id" = "listings"."id"
WHERE "date" LIKE '2023-06%'
GROUP BY "listing_id";
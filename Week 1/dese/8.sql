SELECT "name", COUNT("expenditures"."pupils") AS "Number of Pupils"
FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
GROUP BY "districts"."name";
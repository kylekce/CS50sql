SELECT "name"
FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
WHERE "expenditures"."amount" > 100000000
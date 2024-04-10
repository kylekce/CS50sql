SELECT "districts"."name", "per_pupil_expenditure"
FROM "expenditures"
JOIN "districts" ON "expenditures"."district_id" = "districts"."id"
ORDER BY "per_pupil_expenditure" DESC
LIMIT 10;
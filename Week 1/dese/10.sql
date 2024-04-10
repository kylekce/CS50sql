SELECT "districts"."name", "per_pupil_expenditure"
FROM "expenditures"
JOIN "districts" ON "expenditures"."district_id" = "districts"."id"
WHERE "districts"."type" = 'Public School District'
ORDER BY "per_pupil_expenditure" DESC
LIMIT 10;
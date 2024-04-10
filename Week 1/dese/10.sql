SELECT "name", "per_pupil_expenditure"
FROM "expenditures"
JOIN "districts" ON "expenditures"."district_id" = "districts"."id"
GROUP BY "name"
HAVING "districts"."type" = 'Public School'
ORDER BY "per_pupil_expenditure" DESC;
SELECT "name", "expenditures"."per_pupil_expenditure", "staff_evaluations"."exemplary"
FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
JOIN "staff_evaluations" ON "districts"."id" = "staff_evaluations"."district_id"
WHERE "type" = 'Public School District' 
AND "expenditures"."per_pupil_expenditure" > AVG("expenditures"."per_pupil_expenditure")
AND "staff_evaluations"."exemplary" > AVG("staff_evaluations"."exemplary")
ORDER BY "staff_evaluations"."exemplary" DESC, "expenditures"."per_pupil_expenditure" DESC;
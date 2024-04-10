SELECT "name"
FROM "schools"
JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
WHERE ("type" = 'Public School' OR "type" = 'Charter School') AND 
AND "graduation_rates"."graduated" = 100;

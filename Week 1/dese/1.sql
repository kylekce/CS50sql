SELECT DISTINCT "name", "city"
FROM "schools"
WHERE "type" = 'Public School' OR "type" = 'Charter School'
ORDER BY "name" ASC;
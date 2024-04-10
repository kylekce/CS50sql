SELECT COUNT(*), "name", "city"
FROM "schools"
WHERE "type" = 'Public School' OR "type" = 'Charter School';
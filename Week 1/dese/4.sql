SELECT "city", COUNT("type") as "Number of Public Schools"
FROM "schools"
GROUP BY "city"
HAVING "type" = 'Public School'
ORDER BY "Number of Public Schools" ASC;
-- LIMIT 10;
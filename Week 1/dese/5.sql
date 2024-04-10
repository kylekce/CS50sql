SELECT "city", COUNT("type") as "Number of Public Schools"
FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
HAVING COUNT("type") <= 3
ORDER BY "Number of Public Schools" DESC, "city" ASC;
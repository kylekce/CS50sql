SELECT "city", COUNT("type")
FROM "schools"
GROUP BY "type"
LIMIT 10;
SELECT "city", COUNT("type")
FROM "schools"
HAVING "type" = 'Public School'
LIMIT 10;
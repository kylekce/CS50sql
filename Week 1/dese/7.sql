SELECT "name"
FROM "schools"
WHERE ("type" = 'Public School' OR "type" = 'Charter School') 
AND "district_id" = (
    SELECT "id"
    FROM "districts"
    WHERE "name" = 'Cambridge'
);

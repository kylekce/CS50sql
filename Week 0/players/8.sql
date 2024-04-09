SELECT ROUND(AVG("height"), 2), ROUND(AVG("weight"), 2)
FROM "players"
WHERE "debut" >= '2000-01-01' AND "throws" = 'R';
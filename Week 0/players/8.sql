SELECT ROUND(AVG("height"), 2) as 'Average Height', ROUND(AVG("weight"), 2) as 'Average Weight'
FROM "players"
WHERE "debut" >= '2000-01-01';
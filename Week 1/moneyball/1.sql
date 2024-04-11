SELECT "year", ROUND(AVG("salary"), 2) as "average salary"
FROM "salaries"
GROUP BY "year"
ORDER BY "year" DESC;
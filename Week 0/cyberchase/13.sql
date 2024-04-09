SELECT YEAR(air_date) AS year, MIN(air_date) AS first_episode_date
FROM episodes
WHERE network = 'PBS' AND show = 'Cyberchase'
GROUP BY YEAR(air_date)
ORDER BY YEAR(air_date);
SELECT
    Country.countriesAndTerritories AS Country,
    ROUND((SUM(Condition.deaths) * 100.0 / SUM(Condition.cases)), 2) AS "% deaths of country cases"
FROM
    Condition
JOIN
    Country ON Condition.geoId = Country.geoId
GROUP BY
    Country.countriesAndTerritories
ORDER BY
    "% deaths of country cases" DESC
LIMIT
    10;

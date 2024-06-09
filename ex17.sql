SELECT
    Country.countriesAndTerritories,
    ROUND((SUM(Condition.cases) * 100.0 / Country.popData2020), 2) AS "% cases",
    ROUND((SUM(Condition.deaths) * 100.0 / Country.popData2020), 2) AS "% deaths"
FROM
    Condition
JOIN
    Country ON Condition.geoId = Country.geoId
GROUP BY
    Country.countriesAndTerritories;

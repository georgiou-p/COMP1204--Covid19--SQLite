SELECT
    Country.countriesAndTerritories,
    Condition.dateRep,
    Condition.cases, Condition.deaths
FROM
    Country
JOIN
    Condition ON Country.geoId = Condition.geoId
JOIN
    Date ON Condition.dateRep = Date.dateRep
GROUP BY
    Country.countriesAndTerritories,
    Condition.dateRep
ORDER BY
    Country.countriesAndTerritories ASC,
    Date.year ASC,
    Date.month ASC,
    Date.day ASC;

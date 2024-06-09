SELECT
    Date.dateRep,
    Condition.cases
FROM
    Date
JOIN
    Condition ON Date.dateRep = Condition.dateRep
JOIN
    Country ON Condition.geoId = Country.geoId
WHERE
    Country.countriesAndTerritories = 'United_Kingdom'
ORDER BY
    Date.year ASC,
    Date.month ASC,
    Date.day ASC;

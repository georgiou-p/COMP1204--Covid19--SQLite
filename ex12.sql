-- Populate the Date table
INSERT INTO Date (dateRep, day, month, year)
SELECT DISTINCT dateRep, day, month, year
FROM dataset;
-- Populate the Country table
INSERT INTO Country (geoId, countriesAndTerritories, countryterritoryCode, popData2020, continentExp)
SELECT DISTINCT geoId, countriesAndTerritories, countryterritoryCode, popData2020, continentExp
FROM dataset;
-- Populate the Condition table
INSERT INTO Condition (dateRep, geoId, deaths, cases)
SELECT DISTINCT dateRep, geoId, deaths, cases
FROM dataset;

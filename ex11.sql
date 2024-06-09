CREATE TABLE Date (
    dateRep TEXT NOT NULL PRIMARY KEY,
    day     INTEGER NOT NULL,
    month   INTEGER NOT NULL,
    year    INTEGER NOT NULL
);
CREATE TABLE Country (
    geoId                   TEXT NOT NULL CONSTRAINT Country_pk PRIMARY KEY,
    countriesAndTerritories TEXT NOT NULL,
    countryterritoryCode    TEXT NOT NULL,
    popData2020             INTEGER NOT NULL,
    continentExp            TEXT NOT NULL
);
CREATE TABLE Condition (
    dateRep TEXT NOT NULL,
    geoId   TEXT NOT NULL,
    deaths  INTEGER,
    cases   INTEGER,
    CONSTRAINT Condition_pk PRIMARY KEY (dateRep, geoId)
);

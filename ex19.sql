SELECT Date.dateRep AS "date",
       SUM(Condition.deaths) OVER win1 AS "cumulative UK deaths",
       SUM(Condition.cases) OVER win1 AS "cumulative UK cases"
FROM Date
JOIN Condition ON Date.dateRep = Condition.dateRep
WHERE Condition.geoId = 'UK'
WINDOW win1 AS (ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
ORDER BY Date.year, Date.month, Date.day ASC;

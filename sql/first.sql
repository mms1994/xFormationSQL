USE XF;
SELECT
  CountryID,
  Name
FROM (SELECT
        Country.CountryID,
        Country.Name,
        SUM(City.Population) AS "SUM"
      FROM Country, City
      WHERE Country.CountryID = City.CountryID
      GROUP BY Country.CountryID)
WHERE SUM > 400;
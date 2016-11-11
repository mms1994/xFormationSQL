USE XF;
SELECT Country.Name
FROM Country
  LEFT JOIN (SELECT Country.Name
             FROM Building
               LEFT JOIN City ON Building.CityID = City.CityID
               LEFT JOIN Country ON City.CountryID = Country.CountryID) AS "TEMP" ON Country.Name = TEMP.Name
WHERE TEMP.Name IS NULL;

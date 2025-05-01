SELECT flags.countryname
FROM flags, flags_countries
WHERE flags.red = '1'
AND flags.id = flags_countries.flag_id;


SELECT countries.countryname, countries.continent, flags.mainhue
FROM flags, countries, flags_countries
WHERE flags.id = flags_countries.flag_id
AND  countries.id = flags_countries.country_id
AND countries.continent = 1;


SELECT countries.countryname, countries.area
FROM countries, flags, flags_countries
WHERE flags.id = flags_countries.flag_id
AND countries.id = flags_countries.country_id
AND countries.area > 500;
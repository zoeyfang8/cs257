SELECT flags.name
FROM flags, flags_countries
WHERE flags.red = '1'
AND flags.id = flags_countries.flag_id;


SELECT countries.name, countries.continent, flags.mainhue
FROM flags, countries, flags_countries
WHERE flags.id = flags_countries.flag_id
AND  countries.id = flags_countries.country_id;


SELECT countries.name, countries.area
FROM countries, flags_countries
WHERE flags.id = flags_countries.flag_id
AND countries.id = flags_countries.country_id
AND countries.area > 500
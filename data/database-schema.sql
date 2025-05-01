CREATE TABLE countries (
    id integer NOT NULL,
    countryname text,
    area integer,
    continent integer
);
CREATE TABLE flags (
    id integer NOT NULL,
    countryname text,
    flagimage text,
    colours text,
    red	integer,
    green integer,
    blue integer,
    gold integer,
    white integer,
    black integer,
    orange integer,
    mainhue text
);

CREATE TABLE flags_countries (
    country_id integer,
    flag_id integer
);

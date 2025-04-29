CREATE TABLE countries (
    id integer NOT NULL,
    area integer,
    continent integer
);
CREATE TABLE flags (
    id integer NOT NULL,
    flagpicture text,
    red	integer,
    green integer,
    blue integer,
    gold integer,
    white integer,
    black integer,
    orange integer,
    mainhue text
);

CREATE TABLE countries_flags (
    country_id integer,
    flag_id integer
);

-- Deploy demo:diver_table to pg
-- requires: deriv_schema
-- requires: qualification_table

BEGIN;

CREATE TABLE deriv.diver (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100) UNIQUE,
  date_of_birth DATE,
  qualification_level VARCHAR(50) REFERENCES deriv.qualification(level),
  registration_date TIMESTAMP
);

COMMIT;

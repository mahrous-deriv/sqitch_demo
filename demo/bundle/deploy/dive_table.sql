-- Deploy demo:dive_table to pg
-- requires: deriv_schema
-- requires: qualification_table
-- requires: diver_table

BEGIN;

CREATE TABLE deriv.dive (
  id SERIAL PRIMARY KEY,
  location VARCHAR(100),
  date_time TIMESTAMP,
  max_depth FLOAT CHECK (max_depth > 0),
  duration INTEGER CHECK (duration > 0),
  guide_diver INTEGER REFERENCES deriv.diver(id)
);

COMMIT;

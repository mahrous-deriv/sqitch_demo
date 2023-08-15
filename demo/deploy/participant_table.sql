-- Deploy demo:participant_table to pg
-- requires: deriv_schema
-- requires: dive_table
-- requires: diver_table

BEGIN;

CREATE TABLE deriv.dive_participant (
  dive_id INTEGER REFERENCES deriv.dive(id),
  diver_id INTEGER REFERENCES deriv.diver(id),
  PRIMARY KEY (dive_id, diver_id)
);

COMMIT;

-- Deploy demo:dive_buddy_table to pg
-- requires: deriv_schema
-- requires: diver_table
-- requires: dive_table

BEGIN;

CREATE TABLE deriv.dive_buddy (
  dive_id INTEGER REFERENCES deriv.dive(id),
  buddy1_id INTEGER REFERENCES deriv.diver(id),
  buddy2_id INTEGER REFERENCES deriv.diver(id),
  PRIMARY KEY (dive_id, buddy1_id, buddy2_id)
);

COMMIT;

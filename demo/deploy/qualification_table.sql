-- Deploy demo:qualification_table to pg
-- requires: deriv_schema

BEGIN;

CREATE TABLE deriv.qualification (
  level VARCHAR(50) PRIMARY KEY,
  description TEXT
);

COMMIT;

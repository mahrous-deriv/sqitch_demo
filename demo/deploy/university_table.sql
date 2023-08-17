-- Deploy demo:university_table to pg
-- requires: deriv_schema
-- requires: person_table

BEGIN;

CREATE TABLE deriv.university (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    contact BIGINT REFERENCES deriv.person(id)
);

COMMIT;

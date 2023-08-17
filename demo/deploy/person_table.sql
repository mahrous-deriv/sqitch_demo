-- Deploy demo:person_table to pg
-- requires: deriv_schema

BEGIN;

    CREATE TABLE deriv.person (
        id BIGSERIAL PRIMARY KEY,
        firstname TEXT NOT NULL,
        lastname TEXT NOT NULL,
        phone TEXT
    );

COMMIT;

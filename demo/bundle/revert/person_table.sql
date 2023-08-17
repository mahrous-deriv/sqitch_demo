-- Revert demo:person_table from pg

BEGIN;

    DROP TABLE deriv.person;

COMMIT;

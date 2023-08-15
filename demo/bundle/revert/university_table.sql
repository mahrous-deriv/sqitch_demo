-- Revert demo:university_table from pg

BEGIN;

DROP TABLE deriv.university;

COMMIT;

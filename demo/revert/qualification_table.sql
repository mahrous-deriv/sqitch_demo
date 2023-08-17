-- Revert demo:qualification_table from pg

BEGIN;

DROP TABLE deriv.qualification;
COMMIT;

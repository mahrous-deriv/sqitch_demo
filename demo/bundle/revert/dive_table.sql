-- Revert demo:dive_table from pg

BEGIN;

DROP TABLE deriv.dive;

COMMIT;

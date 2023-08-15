-- Revert demo:diver_table from pg

BEGIN;

DROP TABLE deriv.diver;

COMMIT;

-- Revert demo:dive_buddy_table from pg

BEGIN;

DROP TABLE deriv.dive_buddy;

COMMIT;

-- Revert demo:dive_location_index from pg

BEGIN;

DROP INDEX deriv.idx_dive_location;

COMMIT;

-- Deploy demo:dive_location_index to pg
-- requires: dive_table

BEGIN;

CREATE INDEX idx_dive_location ON deriv.dive (location);

COMMIT;

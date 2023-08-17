-- Verify demo:dive_location_index on pg

BEGIN;

DO $$ 
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_class c
    JOIN pg_namespace n ON c.relnamespace = n.oid
    WHERE c.relname = 'idx_dive_location'
    AND n.nspname = 'deriv'
  ) THEN
    RAISE EXCEPTION 'Index deriv.idx_dive_location does not exist';
  END IF;
END $$;

ROLLBACK;

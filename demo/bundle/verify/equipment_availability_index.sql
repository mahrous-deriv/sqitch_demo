-- Verify demo:equipment_availability_index on pg

BEGIN;

DO $$ 
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_class c
    JOIN pg_namespace n ON c.relnamespace = n.oid
    WHERE c.relname = 'idx_equipment_availability'
    AND n.nspname = 'deriv'
  ) THEN
    RAISE EXCEPTION 'Index deriv.idx_equipment_availability does not exist';
  END IF;
END $$;

ROLLBACK;

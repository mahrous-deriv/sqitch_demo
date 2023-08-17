-- Verify demo:availability_enum on pg

BEGIN;

DO $$ 
BEGIN
  IF NOT EXISTS (
    SELECT 1 
    FROM pg_type t 
    JOIN pg_namespace n ON t.typnamespace = n.oid 
    WHERE t.typname = 'availability' 
    AND n.nspname = 'deriv'
  ) THEN
    RAISE EXCEPTION 'ENUM type deriv.availability does not exist';
  END IF;
END $$;

ROLLBACK;

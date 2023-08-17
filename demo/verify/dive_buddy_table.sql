-- Verify demo:dive_buddy_table on pg

BEGIN;

DO $$ 
BEGIN
  IF NOT EXISTS (SELECT FROM pg_tables WHERE schemaname = 'deriv' AND tablename = 'dive_buddy') THEN
    RAISE EXCEPTION 'Table deriv.dive_buddy does not exist';
  END IF;
END $$;

ROLLBACK;

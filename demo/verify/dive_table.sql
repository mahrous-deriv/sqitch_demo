-- Verify demo:dive_table on pg

BEGIN;

DO $$ 
BEGIN
  IF NOT EXISTS (SELECT FROM pg_tables WHERE schemaname = 'deriv' AND tablename = 'dive') THEN
    RAISE EXCEPTION 'Table deriv.dive does not exist';
  END IF;
END $$;

ROLLBACK;

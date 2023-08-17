-- Verify demo:diver_table on pg

BEGIN;

DO $$ 
BEGIN
  IF NOT EXISTS (SELECT FROM pg_tables WHERE schemaname = 'deriv' AND tablename = 'diver') THEN
    RAISE EXCEPTION 'Table deriv.diver does not exist';
  END IF;
END $$;

ROLLBACK;

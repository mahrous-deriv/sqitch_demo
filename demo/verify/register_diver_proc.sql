-- Verify demo:register_diver_proc on pg

BEGIN;

DO $$ 
BEGIN
  IF NOT EXISTS (SELECT FROM pg_proc p JOIN pg_namespace n ON p.pronamespace = n.oid WHERE n.nspname = 'deriv' AND p.proname = 'register_diver') THEN
    RAISE EXCEPTION 'Procedure deriv.register_diver does not exist';
  END IF;
END $$;

ROLLBACK;

-- Revert demo:register_diver_proc from pg

BEGIN;

DROP FUNCTION deriv.register_diver(VARCHAR(50), VARCHAR(50), VARCHAR(100), DATE, VARCHAR(50));

COMMIT;

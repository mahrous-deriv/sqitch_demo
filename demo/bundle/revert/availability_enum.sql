-- Revert demo:availability_enum from pg

BEGIN;

DROP TYPE deriv.availability;

COMMIT;

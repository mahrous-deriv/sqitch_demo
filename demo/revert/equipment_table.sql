-- Revert demo:equipment_table from pg

BEGIN;

DROP TABLE deriv.equipment;

COMMIT;

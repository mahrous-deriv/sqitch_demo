-- Revert demo:equipment_availability_index from pg

BEGIN;

DROP INDEX deriv.idx_equipment_availability;

COMMIT;

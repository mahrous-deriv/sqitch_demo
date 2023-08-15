-- Deploy demo:equipment_availability_index to pg
-- requires: equipment_table

BEGIN;

CREATE INDEX idx_equipment_availability ON deriv.equipment (availability);

COMMIT;

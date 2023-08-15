-- Revert demo:equipment_rental_table from pg

BEGIN;

DROP TABLE deriv.equipment_rental;

COMMIT;

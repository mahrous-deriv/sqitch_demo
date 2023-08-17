-- Deploy demo:equipment_rental_table to pg
-- requires: deriv_schema
-- requires: diver_table
-- requires: equipment_table

BEGIN;

CREATE TABLE deriv.equipment_rental (
  id SERIAL PRIMARY KEY,
  equipment_id INTEGER REFERENCES deriv.equipment(id),
  renter_id INTEGER REFERENCES deriv.diver(id),
  rental_date TIMESTAMP,
  return_date TIMESTAMP
);

COMMIT;

-- Deploy demo:equipment_table to pg
-- requires: deriv_schema
-- requires: diver_table

BEGIN;

CREATE TABLE deriv.equipment (
  id SERIAL PRIMARY KEY,
  owner_id INTEGER REFERENCES deriv.diver(id),
  name VARCHAR(50),
  description TEXT,
  availability deriv.availability NOT NULL,
  rental_price DECIMAL(10, 2) CHECK (rental_price >= 0)
);

COMMIT;

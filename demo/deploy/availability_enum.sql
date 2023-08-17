-- Deploy demo:availability_enum to pg
-- requires: deriv_schema

BEGIN;

CREATE TYPE deriv.availability AS ENUM ('available', 'rented', 'shared', 'maintenance', 'private');

COMMIT;

-- Verify demo:deriv_schema on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('deriv', 'usage');

ROLLBACK;

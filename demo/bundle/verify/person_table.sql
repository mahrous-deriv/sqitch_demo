-- Verify demo:person_table on pg

BEGIN;

  SELECT id
       , firstname
       , lastname
       , phone
  FROM deriv.person
  WHERE FALSE;

ROLLBACK;

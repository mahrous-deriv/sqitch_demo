-- Verify demo:university_table on pg

BEGIN;

  SELECT id
       , name
       , contact
    FROM deriv.university
   WHERE false;

ROLLBACK;

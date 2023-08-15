-- Verify demo:qualification_table on pg

BEGIN;

  SELECT level
       , description 
    FROM deriv.qualification
   WHERE false;

ROLLBACK; 

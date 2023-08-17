-- Verify demo:equipment_table on pg

BEGIN;

SELECT id 
     , owner_id
     , name
     , description
     , availability
     , rental_price
  FROM deriv.equipment
 WHERE false;

ROLLBACK;

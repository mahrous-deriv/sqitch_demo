-- Verify demo:equipment_rental_table on pg

BEGIN;

SELECT id
     , equipment_id
     , renter_id
     , rental_date
     , return_date
  FROM deriv.equipment_rental
 WHERE false;

ROLLBACK;

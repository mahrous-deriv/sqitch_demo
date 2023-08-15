-- Verify demo:participant_table on pg

BEGIN;

SELECT dive_id 
     , diver_id
  FROM deriv.dive_participant
 WHERE false;

ROLLBACK;

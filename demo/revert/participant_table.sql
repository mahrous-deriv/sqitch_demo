-- Revert demo:participant_table from pg

BEGIN;

DROP TABLE deriv.dive_participant;

COMMIT;

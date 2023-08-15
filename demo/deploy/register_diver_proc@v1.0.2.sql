-- Deploy demo:register_diver_proc to pg
-- requires: deriv_schema
-- requires: diver_table

BEGIN;

CREATE OR REPLACE FUNCTION deriv.register_diver(
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    date_of_birth DATE,
    qualification_level VARCHAR(50))
RETURNS TABLE (new_diver_id INTEGER) AS $$
BEGIN
  IF date_of_birth > NOW() - INTERVAL '18 years' THEN
    RAISE EXCEPTION 'Diver must be an adult';
  END IF;
  INSERT INTO deriv.diver (first_name, last_name, email, date_of_birth, qualification_level, registration_date) 
  VALUES (first_name, last_name, email, date_of_birth, qualification_level, NOW()) 
  RETURNING id INTO new_diver_id;

  RETURN QUERY SELECT new_diver_id;
END;
$$ LANGUAGE plpgsql;

COMMIT;

CREATE OR REPLACE FUNCTION list_medication_by_donor(v_donor_id IN NUMBER)
RETURN ty_medication_l IS
 v_medications ty_medication_l;

BEGIN
  SELECT ty_medication(donor_id => d.donor_id, medication_name => m.name)
  BULK COLLECT
  INTO v_medications
  FROM donor_medication d
  INNER JOIN medication m
  ON d.medication_id = m.medication_id
  WHERE d.donor_id = v_donor_id;
  
  RETURN v_medications;
  
  EXCEPTION WHEN others THEN
    pkg_err_log.err_log(p_err_message => dbms_utility.format_error_backtrace,
                        p_err_value   => 'v_donor_id: ' || v_donor_id,
                        p_api         => 'list_medication_by_donor');
END;
/
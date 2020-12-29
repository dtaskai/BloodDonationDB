CREATE OR REPLACE FUNCTION list_condition_by_donor(v_donor_id IN NUMBER)
RETURN ty_condition_l IS
 v_conditions ty_condition_l;

BEGIN
  SELECT ty_condition(donor_id => d.donor_id, condition_name => c.name)
  BULK COLLECT
  INTO v_conditions
  FROM donor_condition d
  INNER JOIN condition c
  ON c.condition_id = d.condition_id
  WHERE d.donor_id = v_donor_id;
  
  RETURN v_conditions;
  
  EXCEPTION WHEN others THEN
    pkg_err_log.err_log(p_err_message => dbms_utility.format_error_backtrace,
                        p_err_value   => 'v_donor_id: ' || v_donor_id,
                        p_api         => 'list_condition_by_donor');
END;
/
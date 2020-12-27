CREATE OR REPLACE PROCEDURE can_donate(v_donor_id IN NUMBER) IS

  v_last_donation DATE;

BEGIN
  
  SELECT d.last_donation
    INTO v_last_donation
    FROM donor d
   WHERE d.donor_id = v_donor_id;
   
  IF v_last_donation < add_months(SYSDATE, -1)
  THEN
    dbms_output.put_line('Donor can donate');
  ELSE
    dbms_output.put_line('Donor can NOT donate');
  END IF;
  
  EXCEPTION WHEN no_data_found THEN
    pkg_err_log.err_log(p_err_message => dbms_utility.format_error_backtrace,
                        p_err_value   => 'v_donor_id: ' || v_donor_id,
                        p_api         => 'can_donate');
END;
/
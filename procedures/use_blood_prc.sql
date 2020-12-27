CREATE OR REPLACE PROCEDURE use_blood(v_donation_id IN NUMBER) IS
  donation_already_used_exc EXCEPTION;
  used_placeholder DATE;
BEGIN
  SELECT d.used
    INTO used_placeholder
    FROM donation d
   WHERE d.donation_id = v_donation_id;

  IF used_placeholder IS NULL
  THEN
    UPDATE donation d
       SET d.used = SYSDATE
     WHERE d.donation_id = v_donation_id;
  ELSE
    RAISE donation_already_used_exc;
  END IF;
  
  EXCEPTION 
    WHEN no_data_found THEN
     pkg_err_log.err_log(p_err_message => dbms_utility.format_error_backtrace,
                        p_err_value   => 'v_donation_id: ' || v_donation_id,
                        p_api         => 'use_blood');
    WHEN donation_already_used_exc THEN
      pkg_err_log.err_log(p_err_message => 'Donation already used',
                          p_err_value   => 'v_donation_id: ' || v_donation_id,
                          p_api         => 'use_blood');
      
END;
/
CREATE OR REPLACE FUNCTION list_donations_by_banks(v_blood_bank_id IN NUMBER)
  RETURN ty_donation_l IS
  v_donations ty_donation_l;
BEGIN
  SELECT ty_donation(donation_id   => d.donation_id,
                     donation_date => d.donation_date,
                     other_details => d.other_details,
                     donor_id      => d.donor_id,
                     staff_id      => d.staff_id,
                     blood_bank_id => d.blood_bank_id,
                     used          => d.used)
  BULK COLLECT
  INTO v_donations
  FROM donation d
  WHERE d.blood_bank_id = v_blood_bank_id;

  RETURN v_donations;

  EXCEPTION WHEN others THEN
    pkg_err_log.err_log(p_err_message => dbms_utility.format_error_backtrace,
                        p_err_value   => 'v_blood_bank_id: ' || v_blood_bank_id,
                        p_api         => 'list_donations_by_banks');

END;
/
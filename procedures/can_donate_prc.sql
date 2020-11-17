CREATE OR REPLACE PROCEDURE prc_can_donate(v_donor_id IN NUMBER) IS

  v_last_donation DATE;

BEGIN
  
  SELECT d.last_donation
    INTO v_last_donation
    FROM donor d
   WHERE d.donor_id = v_donor_id;
   
  IF v_last_donation > add_months(SYSDATE, -1)
  THEN
    dbms_output.put_line('Donor can donate');
  ELSIF v_last_donation < add_months(SYSDATE, -1)
  THEN
    dbms_output.put_line('Donor can NOT donate');
  ELSE
    dbms_output.put_line('Donor not found');
  END IF;
END;
/
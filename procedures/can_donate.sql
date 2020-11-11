CREATE OR REPLACE PROCEDURE prc_can_donate(v_donor_id IN NUMBER) AS
BEGIN
  IF SELECT d.last_donation FROM donor d WHERE d.donor_id = v_donor_id > add_months(SYSDATE, -1) THEN
    dbms_output.put_line('Donor can donate');
  ELSIF d.last_donation FROM donor d WHERE d.donor_id = v_donor_id < add_months(SYSDATE, -1) THEN
    dbms_output.put_line('Donor can NOT donate');
  ELSE
    dbms_output.put_line('Donor not found');
  END IF;
END;
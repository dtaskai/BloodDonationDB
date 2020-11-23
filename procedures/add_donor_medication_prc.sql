CREATE OR REPLACE PROCEDURE add_donor_medication(v_medication_id IN NUMBER
                                                ,v_donor_id      IN NUMBER
                                                ,v_other_details IN VARCHAR2) IS
BEGIN
  INSERT INTO donor_medication
    (medication_id
    ,donor_id
    ,other_details)
  VALUES
    (v_medication_id
    ,v_donor_id
    ,v_other_details);
END;
/
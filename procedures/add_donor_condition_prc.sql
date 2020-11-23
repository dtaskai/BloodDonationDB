CREATE OR REPLACE PROCEDURE add_donor_condition(v_donor_id      IN NUMBER
                                               ,v_condition_id  IN NUMBER
                                               ,v_other_details IN VARCHAR2) IS
BEGIN
  INSERT INTO donor_condition
    (donor_id
    ,condition_id
    ,other_details)
  VALUES
    (v_donor_id
    ,v_condition_id
    ,v_other_details);
END;
/
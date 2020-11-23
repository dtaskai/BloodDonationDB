CREATE OR REPLACE PROCEDURE add_address(v_zip_code      IN VARCHAR2
                                       ,v_city          IN VARCHAR2
                                       ,v_street        IN VARCHAR2
                                       ,v_house_number  IN NUMBER
                                       ,v_other_details IN VARCHAR2) IS
BEGIN
  INSERT INTO address
    (zip_code
    ,city
    ,street
    ,house_number
    ,other_details)
  VALUES
    (v_zip_code
    ,v_city
    ,v_street
    ,v_house_number
    ,v_other_details);
END;
/
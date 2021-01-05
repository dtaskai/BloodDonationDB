PROMPT Adding address ...

DECLARE
  zip_code      VARCHAR2(4) := '7400';
  city          VARCHAR2(30) := 'Kaposvár';
  street        VARCHAR2(30) := 'Füredi út';
  house_number  NUMBER := 150;
  other_details VARCHAR2(40) := 'Földszint 2';

BEGIN
  add_address(v_zip_code      => zip_code,
              v_city          => city,
              v_street        => street,
              v_house_number  => house_number,
              v_other_details => other_details);
END;
/

PROMPT Adding blood bank ...

DECLARE
  phone_number      VARCHAR2(30) := '06402414521';
  email          VARCHAR2(30) := 'valamiteszt@gmail.com';
  comments        VARCHAR2(30) := 'Teszt komment';
  address_id  NUMBER := 16;

BEGIN
  add_blood_bank(v_phone_number => phone_number,
                 v_email        => email,
                 v_comments     => comments,
                 v_address_id   => address_id);
END;
/

PROMPT Adding donation ...

DECLARE
  donor_id NUMBER := 1;
  staff_id NUMBER := 1;
  d_date DATE := TO_DATE('2020-05-22','YYYY-MM-DD');
  other_details VARCHAR2(30) := 'tesztelek';
  blood_bank_id NUMBER := 1;
  used DATE := TO_DATE('2020-07-21','YYYY-MM-DD');

BEGIN
  add_donation(v_donor_id      => donor_id,
               v_staff_id      => staff_id ,
               v_date          => d_date,
               v_other_details => other_details,
               v_blood_bank_id => blood_bank_id,
               v_used          => used);
END;
/

PROMPT Adding donor condition ...

DECLARE
  donor_id NUMBER := 1;
  condition_id NUMBER := 6;
  other_details VARCHAR2(30) := 'tesztelek';
BEGIN
  add_donor_condition(v_donor_id      => donor_id,
                      v_condition_id  => condition_id,
                      v_other_details => other_details);
END;
/

PROMPT Adding donor medication ...

DECLARE
  donor_id NUMBER := 1;
  medication_id NUMBER := 6;
  other_details VARCHAR2(30) := 'tesztelek';
BEGIN
  add_donor_medication(v_medication_id => medication_id,
                       v_donor_id      => donor_id,
                       v_other_details => other_details);
END;
/

PROMPT Adding donor ...

DECLARE
  first_name VARCHAR2(40) := 'Herrmann';
  last_name VARCHAR2(40) := 'Zizi';
  gender VARCHAR2(10) := 'N';
  phone_number VARCHAR2(30) := '0647213213';
  last_donation DATE := TO_DATE('2021-01-05','YYYY-MM-DD');
  address_id NUMBER := 1;
  blood_type_id VARCHAR2(40) := 'A+';
  birth_date DATE := TO_DATE('1980-05-21','YYYY-MM-DD');
BEGIN
  add_donor(v_first_name    => first_name,
            v_last_name     => last_name,
            v_gender        => gender,
            v_phone_number  => phone_number,
            v_last_donation => last_donation,
            v_address_id    => address_id,
            v_blood_type_id => blood_type_id,
            v_birth_date    => birth_date);
END;
/

PROMPT Adding staff ...

DECLARE
  first_name VARCHAR2(40) := 'Fekete';
  last_name VARCHAR2(40) := 'Máté';
  address_id NUMBER := 1;
  blood_bank_id NUMBER := 1;
  position_id NUMBER := 1;
  birth_date DATE := TO_DATE('1991-05-21','YYYY-MM-DD');
BEGIN
  add_staff(v_first_name    => first_name,
            v_last_name     => last_name,
            v_birth_date    => birth_date,
            v_address_id    => address_id,
            v_blood_bank_id => blood_bank_id,
            v_position_id   => position_id);
END;
/

PROMPT Testing 'blood type count' procedure ...

DECLARE
BEGIN
  blood_type_count(v_blood_type => 'A+');
  blood_type_count(v_blood_type => 'A-');
  blood_type_count(v_blood_type => 'B+');
  blood_type_count(v_blood_type => 'B-');
  blood_type_count(v_blood_type => '0+');
  blood_type_count(v_blood_type => '0-');
  blood_type_count(v_blood_type => 'AB+');
  blood_type_count(v_blood_type => 'AB-');
END;
/

PROMPT Testing 'can donate' procedure ...

DECLARE
  donor_id_true NUMBER := 2;
  donor_id_false NUMBER := 1;
  donor_id_not_found NUMBER := 99999;
BEGIN
  can_donate(v_donor_id => donor_id_true);
  can_donate(v_donor_id => donor_id_false);
  can_donate(v_donor_id => donor_id_not_found);
END;
/

PROMPT Testing 'use blood' procedure ...

DECLARE
  donation_id NUMBER := 1;
BEGIN
  use_blood(v_donation_id => donation_id);
END;
/

PROMPT Testing 'list condition by donor' function ...

DECLARE
  result ty_condition_l;
  donor_id NUMBER := 1;
BEGIN
  result := list_condition_by_donor(v_donor_id => donor_id);
END;
/

PROMPT Testing 'list donation by banks' function ...

DECLARE
  result ty_donation_l;
  blood_bank_id NUMBER := 1;
BEGIN
  result := list_donations_by_banks(v_blood_bank_id => blood_bank_id);
END;
/

PROMPT Testing 'list medication by donor' function ...

DECLARE
  result ty_medication_l;
  donor_id NUMBER := 1;
BEGIN
  result := list_medication_by_donor(v_donor_id => donor_id);
END;
/

PROMPT Rolling back transaction ...

ROLLBACK;
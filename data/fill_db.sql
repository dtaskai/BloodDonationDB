--Adding addresses

INSERT INTO address(address_id, zip_code, city, street, house_number) 
VALUES(1, 7400, 'Kaposvár', 'Noszlopy utca', 11);

INSERT INTO address(address_id, zip_code, city, street, house_number) 
VALUES(2, 1105, 'Budapest', 'Csabai kapu', 31);

INSERT INTO address(address_id, zip_code, city, street, house_number) 
VALUES(3, 8931, 'Vöckönd', 'Csavargyár u.', 51);

INSERT INTO address(address_id, zip_code, city, street, house_number) 
VALUES(4, 4734, 'Szamosújlak', 'Bem rakpart', 83);

INSERT INTO address(address_id, zip_code, city, street, house_number)
VALUES(5, 1153, 'Budapest', 'Kis Diófa u.', 10);

INSERT INTO address(address_id, zip_code, city, street, house_number)
VALUES(6, 1153, 'Budapest', 'Árpád fejedelem útja', 58);

INSERT INTO address(address_id, zip_code, city, street, house_number)
VALUES(7, 1014, 'Budapest', 'Csabai kapu', 26);

INSERT INTO address(address_id, zip_code, city, street, house_number)
VALUES(8, 7400, 'Kaposvár', 'Szilágyi Erzsébet fasor', 52);

INSERT INTO address(address_id, zip_code, city, street, house_number)
VALUES(9, 7521, 'Kaposmérő', 'Eötvös út',46);

INSERT INTO address(address_id, zip_code, city, street, house_number)
VALUES(10, 7521, 'Kaposújlak', 'Bécsi utca',27);

INSERT INTO address(address_id, zip_code, city, street, house_number)
VALUES(11, 7521, 'Kaposújlak', 'Csokonai utca',9);

--Adding medications

INSERT INTO medication(medication_id, name)
VALUES(1,'kolekalciferol');

INSERT INTO medication(medication_id, name)
VALUES(2,'azitromicin ');

INSERT INTO medication(medication_id, name)
VALUES(3,'acetilszalicilsav');

INSERT INTO medication(medication_id, name)
VALUES(4,'pantoprazol');

INSERT INTO medication(medication_id, name)
VALUES(5,'nebivolol');

INSERT INTO medication(medication_id, name)
VALUES(6,'allopurinol');

INSERT INTO medication(medication_id, name)
VALUES(7,'rosuvastatin');

INSERT INTO medication(medication_id, name)
VALUES(8,'amlodipin');

INSERT INTO medication(medication_id, name)
VALUES(9,'famotidin');

INSERT INTO medication(medication_id, name)
VALUES(10,'levofloxacin');

--Adding conditions
INSERT INTO condition(condition_id, name)
VALUES(1, 'elhízás');

INSERT INTO condition(condition_id, name)
VALUES(2, 'ételallergia');

INSERT INTO condition(condition_id, name)
VALUES(3, 'rövidlátás');

INSERT INTO condition(condition_id, name)
VALUES(4, 'vashiány');

INSERT INTO condition(condition_id, name)
VALUES(5, 'prosztata problémák');

INSERT INTO condition(condition_id, name)
VALUES(6, 'köldöksérv');

INSERT INTO condition(condition_id, name)
VALUES(7, 'cukorbetegség');

--Adding positions

INSERT INTO position(position_id, name)
VALUES(1,'Nurse');

INSERT INTO position(position_id, name)
VALUES(2,'Head nurse');

INSERT INTO position(position_id, name)
VALUES(3,'Medical assistant');

INSERT INTO position(position_id, name)
VALUES(4,'Physician');

INSERT INTO position(position_id, name)
VALUES(5,'Medical manager');

--Adding blood types

INSERT INTO blood_type(blood_type_id, name)
VALUES(1,'A+');

INSERT INTO blood_type(blood_type_id, name)
VALUES(2,'A-');

INSERT INTO blood_type(blood_type_id, name)
VALUES(3,'B+');

INSERT INTO blood_type(blood_type_id, name)
VALUES(4,'B-');

INSERT INTO blood_type(blood_type_id, name)
VALUES(5, '0+');

INSERT INTO blood_type(blood_type_id, name)
VALUES(6,'0-');

INSERT INTO blood_type(blood_type_id, name)
VALUES(7,'AB+');

INSERT INTO blood_type(blood_type_id, name)
VALUES(8,'AB-');

--Adding blood banks

INSERT INTO blood_bank(blood_bank_id,phone_number,email,address_id)
VALUES(1,'06703246323','bd-kaposvar@bdnw.hu',1);

INSERT INTO blood_bank(blood_bank_id,phone_number,email,address_id)
VALUES(2,'06703244323','bd-budapest@bdnw.hu',2);

INSERT INTO blood_bank(blood_bank_id,phone_number,email,address_id)
VALUES(3,'06703241323','bd-vockond@bdnw.hu',3);

INSERT INTO blood_bank(blood_bank_id,phone_number,email,address_id)
VALUES(4,'06703211323','bd-szamosujlak@bdnw.hu',4);


--Adding staff members

INSERT INTO staff(staff_id,first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES(1,'Kurucz','Örs',TO_DATE('1980/4/6','yyyy/mm/dd'),5,1,2);

INSERT INTO staff(staff_id,first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES(2,'Gyarmaty','Pázmán',TO_DATE('1989/12/3','yyyy/mm/dd'),6,2,2);

INSERT INTO staff(staff_id,first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES(3,'Kádár','Szalyk',TO_DATE('1972/6/7','yyyy/mm/dd'),7,3,2);

INSERT INTO staff(staff_id,first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES(4,'Szőllőssy','Barbara',TO_DATE('1955/5/4','yyyy/mm/dd'),8,1,1);

INSERT INTO staff(staff_id,first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES(5,'Erős','Katalin',TO_DATE('1976/1/27','yyyy/mm/dd'),9,2,1);

INSERT INTO staff(staff_id,first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES(6, 'Donko','Erzsőbet',TO_DATE('1986/2/1','yyyy/mm/dd'),10,4,1);

--Adding donors

INSERT INTO donor(donor_id, first_name, last_name, gender, phone_number, can_donate, address_id, blood_type_id, birth_date,last_donation) 
VALUES (1, 'Kovács','Kinga','F','06409231525','N',11,2,TO_DATE('1997/5/2','yyyy/mm/dd'),TO_DATE('2020/11/10','yyyy/mm/dd');

COMMIT;
--Adding addresses

INSERT INTO address(zip_code, city, street, house_number) 
VALUES(7400, 'Kaposvár', 'Noszlopy utca', 11);

INSERT INTO address(zip_code, city, street, house_number) 
VALUES(1105, 'Budapest', 'Csabai kapu', 31);

INSERT INTO address(zip_code, city, street, house_number) 
VALUES(8931, 'Vöckönd', 'Csavargyár u.', 51);

INSERT INTO address(zip_code, city, street, house_number) 
VALUES(4734, 'Szamosújlak', 'Bem rakpart', 83);

INSERT INTO address(zip_code, city, street, house_number)
VALUES(1153, 'Budapest', 'Kis Diófa u.', 10);

INSERT INTO address(zip_code, city, street, house_number)
VALUES(1153, 'Budapest', 'Árpád fejedelem útja', 58);

INSERT INTO address(zip_code, city, street, house_number)
VALUES(1014, 'Budapest', 'Csabai kapu', 26);

INSERT INTO address(zip_code, city, street, house_number)
VALUES(7400, 'Kaposvár', 'Szilágyi Erzsébet fasor', 52);

INSERT INTO address(zip_code, city, street, house_number)
VALUES(7521, 'Kaposmérő', 'Eötvös út',46);

INSERT INTO address(zip_code, city, street, house_number)
VALUES(7521, 'Kaposújlak', 'Bécsi utca',27);

INSERT INTO address(zip_code, city, street, house_number)
VALUES(7521, 'Kaposújlak', 'Csokonai utca',9);

--Adding medications

INSERT INTO medication(name)
VALUES('kolekalciferol');

INSERT INTO medication(name)
VALUES('azitromicin ');

INSERT INTO medication(name)
VALUES('acetilszalicilsav');

INSERT INTO medication(name)
VALUES('pantoprazol');

INSERT INTO medication(name)
VALUES('nebivolol');

INSERT INTO medication(name)
VALUES('allopurinol');

INSERT INTO medication(name)
VALUES('rosuvastatin');

INSERT INTO medication(name)
VALUES('amlodipin');

INSERT INTO medication(name)
VALUES('famotidin');

INSERT INTO medication(name)
VALUES('levofloxacin');

--Adding conditions
INSERT INTO condition(name)
VALUES('elhízás');

INSERT INTO condition(name)
VALUES('ételallergia');

INSERT INTO condition(name)
VALUES('rövidlátás');

INSERT INTO condition(name)
VALUES('vashiány');

INSERT INTO condition(name)
VALUES('prosztata problémák');

INSERT INTO condition(name)
VALUES('köldöksérv');

INSERT INTO condition(name)
VALUES('cukorbetegség');

--Adding positions

INSERT INTO position(name)
VALUES('Nurse');

INSERT INTO position(name)
VALUES('Head nurse');

INSERT INTO position(name)
VALUES('Medical assistant');

INSERT INTO position(name)
VALUES('Physician');

INSERT INTO position(name)
VALUES('Medical manager');

--Adding blood types

INSERT INTO blood_type(blood_type_id, name)
VALUES('A+','A Rh pozitív');

INSERT INTO blood_type(blood_type_id, name)
VALUES('A-','A Rh negatív');

INSERT INTO blood_type(blood_type_id, name)
VALUES('B+','B Rh pozitív');

INSERT INTO blood_type(blood_type_id, name)
VALUES('B-','B Rh negatív');

INSERT INTO blood_type(blood_type_id, name)
VALUES('0+', '0 Rh pozitív');

INSERT INTO blood_type(blood_type_id, name)
VALUES('0-','0 Rh negatív');

INSERT INTO blood_type(blood_type_id, name)
VALUES('AB+','AB Rh pozitív');

INSERT INTO blood_type(blood_type_id, name)
VALUES('AB-','AB Rh negatív');

--Adding blood banks

INSERT INTO blood_bank(phone_number,email,address_id)
VALUES('06703246323','bd-kaposvar@bdnw.hu',1);

INSERT INTO blood_bank(phone_number,email,address_id)
VALUES('06703244323','bd-budapest@bdnw.hu',2);

INSERT INTO blood_bank(phone_number,email,address_id)
VALUES('06703241323','bd-vockond@bdnw.hu',3);

INSERT INTO blood_bank(phone_number,email,address_id)
VALUES('06703211323','bd-szamosujlak@bdnw.hu',4);


--Adding staff members

INSERT INTO staff(first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES('Kurucz','Örs',TO_DATE('1980/4/6','yyyy/mm/dd'),5,1,2);

INSERT INTO staff(first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES('Gyarmaty','Pázmán',TO_DATE('1989/12/3','yyyy/mm/dd'),6,2,2);

INSERT INTO staff(first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES('Kádár','Szalyk',TO_DATE('1972/6/7','yyyy/mm/dd'),7,3,2);

INSERT INTO staff(first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES('Szőllőssy','Barbara',TO_DATE('1955/5/4','yyyy/mm/dd'),8,1,1);

INSERT INTO staff(first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES('Erős','Katalin',TO_DATE('1976/1/27','yyyy/mm/dd'),9,2,1);

INSERT INTO staff(first_name,last_name,birth_date,address_id,position_id,blood_bank_id)
VALUES('Donko','Erzsőbet',TO_DATE('1986/2/1','yyyy/mm/dd'),10,4,1);

--Adding donors

COMMIT;
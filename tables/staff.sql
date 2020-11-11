CREATE TABLE staff(
    staff_id NUMBER,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    birth_date DATE NOT NULL,
    address_id NUMBER,
    blood_bank_id NUMBER,
    position_id NUMBER
);
CREATE TABLE donor (
    donor_id INT,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    gender VARCHAR2(1) NOT NULL,
    phone_number VARCHAR2(30) NOT NULL,
    can_donate VARCHAR2(1) NOT NULL,
    last_donation DATE,
    address_id INT NOT NULL,
    blood_type_id INT NOT NULL,
    birth_date DATE NOT NULL
);
CREATE TABLE blood_bank(
    blood_bank_id INT,
    phone_number VARCHAR2(30) NOT NULL,
    email VARCHAR2(40) NOT NULL,
    comments VARCHAR2(100),
    address_id INT,
    inventory_id INT
);
CREATE TABLE address (
    address_id NUMBER,
    zip_code VARCHAR(7) NOT NULL,
    city VARCHAR(30) NOT NULL,
    street VARCHAR(40) NOT NULL,
    house_number NUMBER NOT NULL,
    other_details VARCHAR(50)
);
CREATE TABLE address_h (
    address_id NUMBER,
    zip_code VARCHAR(7),
    city VARCHAR(30),
    street VARCHAR(40),
    house_number NUMBER,
    other_details VARCHAR(50),
    mod_user VARCHAR2(300),
    created_on    TIMESTAMP(6),
    last_mod      timestamp(6),
    dml_flag	    varchar2(1),
    version	      number
);
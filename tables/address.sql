CREATE TABLE address (
    address_id NUMBER,
    zip_code VARCHAR2(7) NOT NULL,
    city VARCHAR2(30) NOT NULL,
    street VARCHAR2(40) NOT NULL,
    house_number NUMBER NOT NULL,
    other_details VARCHAR2(50),
    mod_user VARCHAR2(300),
    created_on    TIMESTAMP(6),
    last_mod      timestamp(6),
    dml_flag	    varchar2(1),
    version	      number
);
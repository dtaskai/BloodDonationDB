CREATE TABLE blood_bank_h(
    blood_bank_id NUMBER,
    phone_number VARCHAR2(30),
    email VARCHAR2(40),
    comments VARCHAR2(100),
    address_id NUMBER,
    mod_user VARCHAR2(300),
    created_on    TIMESTAMP(6),
    last_mod      timestamp(6),
    dml_flag	    varchar2(1),
    version	      number
);
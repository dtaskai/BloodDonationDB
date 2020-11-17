CREATE TABLE donor_h (
    donor_id NUMBER,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    gender VARCHAR2(1),
    phone_number VARCHAR2(30),
    can_donate VARCHAR2(1),
    last_donation DATE,
    address_id NUMBER,
    blood_type_id VARCHAR2(3),
    birth_date DATE,
    mod_user VARCHAR2(300),
    created_on    TIMESTAMP(6),
    last_mod      timestamp(6),
    dml_flag	    varchar2(1),
    version	      number
);
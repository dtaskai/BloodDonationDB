CREATE TABLE donor (
    donor_id NUMBER,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    gender VARCHAR2(1) NOT NULL,
    phone_number VARCHAR2(30) NOT NULL,
    last_donation DATE,
    address_id NUMBER NOT NULL,
    blood_type_id VARCHAR2(3) NOT NULL,
    birth_date DATE NOT NULL,
    mod_user VARCHAR2(300),
    created_on    TIMESTAMP(6),
    last_mod      timestamp(6),
    dml_flag	    varchar2(1),
    version	      number
);
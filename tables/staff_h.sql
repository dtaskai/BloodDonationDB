CREATE TABLE staff_h(
    staff_id NUMBER,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    birth_date DATE,
    address_id NUMBER,
    blood_bank_id NUMBER,
    position_id NUMBER,
    mod_user VARCHAR2(300),
    created_on    TIMESTAMP(6),
    last_mod      timestamp(6),
    dml_flag	    varchar2(1),
    version	      number
);
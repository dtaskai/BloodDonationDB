CREATE TABLE blood_type_h(
    blood_type_id VARCHAR2(3) UNIQUE NOT NULL,
    name VARCHAR2(15) NOT NULL,
    mod_user VARCHAR2(300),
    created_on    TIMESTAMP(6),
    last_mod      timestamp(6),
    dml_flag	    varchar2(1),
    version	      number
);
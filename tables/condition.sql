CREATE TABLE condition(
    condition_id NUMBER,
    name VARCHAR2(50) NOT NULL,
    mod_user VARCHAR2(300),
    created_on    TIMESTAMP(6),
    last_mod      timestamp(6),
    dml_flag	    varchar2(1),
    version	      number
);
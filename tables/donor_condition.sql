CREATE TABLE donor_condition(
    donor_id NUMBER,
    condition_id NUMBER,
    other_details VARCHAR2(100),
    mod_user VARCHAR2(300),
    created_on    TIMESTAMP(6),
    last_mod      timestamp(6),
    dml_flag	    varchar2(1),
    version	      number
);
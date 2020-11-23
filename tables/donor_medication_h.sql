CREATE TABLE donor_medication_h(
    medication_id NUMBER,
    donor_id NUMBER,
    other_details VARCHAR2(100),
    mod_user VARCHAR2(300),
    created_on    TIMESTAMP(6),
    last_mod      timestamp(6),
    dml_flag	    varchar2(1),
    version	      number,
    id NUMBER
);
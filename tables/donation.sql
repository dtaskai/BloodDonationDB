CREATE TABLE donation(
    donation_id NUMBER,
    donation_date DATE DEFAULT SYSDATE,
    other_details VARCHAR2(100),
    donor_id NUMBER,
    staff_id NUMBER,
    blood_bank_id NUMBER,
    used DATE,
    mod_user VARCHAR2(300),
    created_on    TIMESTAMP(6),
    last_mod      timestamp(6),
    dml_flag	    varchar2(1),
    version	      number
);
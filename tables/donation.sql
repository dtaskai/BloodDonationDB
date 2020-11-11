CREATE TABLE donation(
    donation_id NUMBER,
    donation_date DATE NOT NULL,
    other_details VARCHAR2(100),
    donor_id NUMBER,
    staff_id NUMBER,
    blood_bank_id NUMBER,
    used DATE
);
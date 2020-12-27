CREATE OR REPLACE TYPE ty_donation IS OBJECT(
    donation_id NUMBER,
    donation_date DATE,
    other_details VARCHAR2(100),
    donor_id NUMBER,
    staff_id NUMBER,
    blood_bank_id NUMBER,
    used DATE
);
/
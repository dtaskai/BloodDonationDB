CREATE TABLE donation(
    donation_id INT,
    donation_date DATE NOT NULL,
    other_details VARCHAR2(100),
    donor_id INT,
    staff_id INT,
    blood_bank_id INT,
    used DATE
);
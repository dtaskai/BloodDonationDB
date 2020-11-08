ALTER TABLE donation
ADD CONSTRAINT donation_pk PRIMARY KEY (donation_id);
ALTER TABLE donation
ADD CONSTRAINT donation_fk0 FOREIGN KEY (donor_id) REFERENCES donor(donor_id);
ALTER TABLE donation
ADD CONSTRAINT donation_fk1 FOREIGN KEY (staff_id) REFERENCES staff(staff_id);
ALTER TABLE donation
ADD CONSTRAINT donation_fk2 FOREIGN KEY (blood_bank_id) REFERENCES blood_bank(blood_bank_id);
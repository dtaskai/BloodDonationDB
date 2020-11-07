ALTER TABLE staff
ADD CONSTRAINT staff_pk PRIMARY KEY (staff_id);
ALTER TABLE staff
ADD CONSTRAINT staff_fk0 FOREIGN KEY (address_id) REFERENCES address(address_id);
ALTER TABLE staff
ADD CONSTRAINT staff_fk1 FOREIGN KEY (blood_bank_id) REFERENCES blood_bank(blood_bank_id);
ALTER TABLE staff
ADD CONSTRAINT staff_fk2 FOREIGN KEY (position_id) REFERENCES position(position_id);
ALTER TABLE donor
ADD CONSTRAINT donor_pk PRIMARY KEY (donor_id);
ALTER TABLE donor
ADD CONSTRAINT donor_fk0 FOREIGN KEY (address_id) REFERENCES address(address_id);
ALTER TABLE donor
ADD CONSTRAINT donor_fk1 FOREIGN KEY (blood_type_id) REFERENCES blood_type(blood_type_id);
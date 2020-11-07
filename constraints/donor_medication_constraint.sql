ALTER TABLE donor_medication
ADD CONSTRAINT donor_medication_fk0 FOREIGN KEY (medication_id) REFERENCES medication(medication_id);
ALTER TABLE donor_medication
ADD CONSTRAINT donor_medication_fk1 FOREIGN KEY (donor_id) REFERENCES donor(donor_id);
ALTER TABLE donor_medication
ADD CONSTRAINT donor_medication_pk PRIMARY KEY (donor_id, medication_id);
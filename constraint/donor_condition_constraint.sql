ALTER TABLE donor_condition
ADD CONSTRAINT donor_condition_fk0 FOREIGN KEY (condition_id) REFERENCES condition(condition_id);
ALTER TABLE donor_condition
ADD CONSTRAINT donor_condition_fk1 FOREIGN KEY (donor_id) REFERENCES donor(donor_id);
ALTER TABLE donor_condition
ADD CONSTRAINT donor_condition_pk PRIMARY KEY (donor_id, condition_id);
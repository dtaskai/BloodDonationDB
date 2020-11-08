ALTER TABLE blood_bank
ADD CONSTRAINT blood_bank_pk PRIMARY KEY (blood_bank_id);
ALTER TABLE blood_bank
ADD CONSTRAINT blood_bank_fk0 FOREIGN KEY (address_id) REFERENCES address(address_id);
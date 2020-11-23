PROMPT Creating user...

@./users/create_bd_manager.sql

PROMPT Creating tables...

@./tables/donor.sql
@./tables/address.sql
@./tables/blood_type.sql
@./tables/position.sql
@./tables/blood_bank.sql
@./tables/staff.sql
@./tables/donation.sql
@./tables/medication.sql
@./tables/condition.sql
@./tables/donor_medication.sql
@./tables/donor_condition.sql

PROMPT Creating history tables...

@./tables/donor_h.sql
@./tables/address_h.sql
@./tables/blood_type_h.sql
@./tables/position_h.sql
@./tables/blood_bank_h.sql
@./tables/staff_h.sql
@./tables/donation_h.sql
@./tables/medication_h.sql
@./tables/condition_h.sql
@./tables/donor_medication_h.sql
@./tables/donor_condition_h.sql

PROMPT Creating constraints...

@./constraints/address_constraint.sql
@./constraints/donor_constraint.sql
@./constraints/position_constraint.sql
@./constraints/blood_bank_constraint.sql
@./constraints/staff_constraint.sql
@./constraints/donation_constraint.sql
@./constraints/medication_constraint.sql
@./constraints/condition_constraint.sql
@./constraints/donor_medication_constraint.sql
@./constraints/donor_condition_constraint.sql

PROMPT Creating sequences...

@./sequences/address_seq.sql
@./sequences/blood_bank_seq.sql
@./sequences/condition_seq.sql
@./sequences/donation_seq.sql
@./sequences/donor_seq.sql
@./sequences/medication_seq.sql
@./sequences/position_seq.sql
@./sequences/staff_seq.sql
@./sequences/blood_type_seq.sql
@./sequences/donor_medication_seq.sql
@./sequences/donor_condition_seq.sql

PROMPT Creating triggers...

@./triggers/address_trg.sql
@./triggers/address_h_trg.sql
@./triggers/blood_bank_trg.sql
@./triggers/blood_bank_h_trg.sql
@./triggers/blood_type_trg.sql
@./triggers/blood_type_h_trg.sql
@./triggers/condition_trg.sql
@./triggers/condition_h_trg.sql
@./triggers/donation_trg.sql
@./triggers/donation_h_trg.sql
@./triggers/donor_condition_trg.sql
@./triggers/donor_condition_h_trg.sql
@./triggers/donor_medication_trg.sql
@./triggers/donor_medication_h_trg.sql
@./triggers/donor_trg.sql
@./triggers/donor_h_trg.sql
@./triggers/medication_trg.sql
@./triggers/medication_h_trg.sql
@./triggers/position_trg.sql
@./triggers/position_h_trg.sql
@./triggers/staff_trg.sql
@./triggers/staff_h_trg.sql

PROMPT Creating views...

@./views/age_groups.sql
@./views/all_donor_info.sql

PROMPT Creating procedures...

--@./procedures/can_donate.sql
@./procedures/add_address_prc.sql
@./procedures/add_blood_bank_prc.sql
@./procedures/add_donation_prc.sql
@./procedures/add_donor_condition_prc.sql
@./procedures/add_donor_medication_prc.sql
@./procedures/add_donor_prc.sql
@./procedures/add_staff_prc.sql

PROMPT Filling tables with data...

@./data/fill_db.sql

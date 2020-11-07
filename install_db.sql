PROMPT Creating user...

@./users/create_bd_manager.sql

PROMPT Creating tables...

@./tables/donor.sql
@./tables/address.sql
@./tables/blood_type.sql
@./tables/position.sql
@./tables/inventory.sql
@./tables/blood_bank.sql
@./tables/staff.sql
@./tables/donation.sql
@./tables/medication.sql
@./tables/condition.sql
@./tables/donor_medication.sql
@./tables/donor_condition.sql

PROMPT Creating constraints...

@./constraints/address_constraint.sql
@./constraints/blood_type_constraint.sql
@./constraints/donor_constraint.sql
@./constraints/position_constraint.sql
@./constraints/inventory_constraint.sql
@./constraints/blood_bank_constraint.sql
@./constraints/staff_constraint.sql
@./constraints/donation_constraint.sql
@./constraints/medication_constraint.sql
@./constraints/condition_constraint.sql
@./constraints/donor_medication_constraint.sql
@./constraints/donor_condition_constraint.sql
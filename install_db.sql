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

@./constraint/address_constraint.sql
@./constraint/blood_type_constraint.sql
@./constraint/donor_constraint.sql
@./constraint/position_constraint.sql
@./constraint/inventory_constraint.sql
@./constraint/blood_bank_constraint.sql
@./constraint/staff_constraint.sql
@./constraint/donation_constraint.sql
@./constraint/medication_constraint.sql
@./constraint/condition_constraint.sql
@./constraint/donor_medication_constraint.sql
@./constraint/donor_condition_constraint.sql
CREATE OR REPLACE VIEW vw_all_donor_info AS
SELECT d.donor_id, d.first_name || ' ' || d.last_name AS full_name,d.gender,d.phone_number,d.can_donate,d.last_donation, a.address_id,
                                                                                                                    a.zip_code,
                                                                                                                    a.city,
                                                                                                                    a.street,
                                                                                                                    a.house_number,
                                                                                                                    a.other_details,b.blood_type_id, b.name as blood_type_name FROM donor d
INNER JOIN address a
ON d.address_id = a.address_id
INNER JOIN blood_type b
ON d.blood_type_id = b.blood_type_id;
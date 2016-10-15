
CREATE TABLE hospitals_info AS SELECT provider_id, hospital_name,
city,state,zip_code,county_name,hospital_type, hospital_ownership
FROM import_hospitals
WHERE import_hospitals.zip_code >1;

CREATE EXTERNAL TABLE IF NOT EXISTS import_hospitals
(
provider_id string,
hospital_name string,
city string,
state string,
zip_code string,
county_name string,
phone_number string,
hospital_type string,
hospital_ownership string,
emergency_services string
)
 ROW FORMAT DELIMITED
 FIELDS TERMINATED BY ','
 STORED AS TEXTFILE
  LOCATION '/user/w205/hospital_compare/1';


 CREATE EXTERNAL TABLE IF NOT EXISTS import_measures
   (
   measure_name string,
   measure_id string,
   measure_start_quarter string,
   measure_start_date string,
   measure_end_quarter string,
   measure_end_date string
   )
    ROW FORMAT DELIMITED
    FIELDS TERMINATED BY ','
    STORED AS TEXTFILE
    LOCATION '/user/w205/hospital_compare/2';



 CREATE EXTERNAL TABLE IF NOT EXISTS import_effective_care
 (
 provider_id string,
 hospital_name string,
 address string,
 city string,
 state string,
 zip_code string,
 county_name string,
 phone_number string,
 condition string,
 measure_id string,
 measure_name string,
 score string,
 sample string,
 footnote string,
 measure_start_date string,
 measure_end_date string
 )
  ROW FORMAT DELIMITED
  FIELDS TERMINATED BY ','
  STORED AS TEXTFILE
  LOCATION '/user/w205/hospital_compare/3';



  CREATE EXTERNAL TABLE IF NOT EXISTS import_readmissions
  (
  provider_id string,
  hospital_name string,
  address string,
  city string,
  state string,
  zip_code string,
  county_name string,
  phone_number string,
  measure_name string,
  measure_id string,
  compared_to_national string,
  denominator string,
  score string,
  lower_estimate string,
  higher_estimate string,
  footnote string,
  measure_start_date string,
  measure_end_date string
  )
   ROW FORMAT DELIMITED
   FIELDS TERMINATED BY ','
   STORED AS TEXTFILE
  LOCATION '/user/w205/hospital_compare/4';



    CREATE EXTERNAL TABLE IF NOT EXISTS import_surveys_responses
    (
      provider_id string,
      hospital_name string,
      address string,
      city string,
      state string,
      zip_code string,
      county_name string,
      nurses_achievment string,
      nurses_improvement string,
      nurses_score string,
      doctors_achievment string,
      doctors_improvement string,
      doctors_score string,
      responsivness_achievment string,
      responsivness_improvement string,
      responsivness_score string,
      pain_achievment string,
      pain_improvement string,
      pain_score string,
      medicines_achievment string,
      medicines_improvement string,
      medicines_score string,
      cleanliness_achievment string,
      cleanliness_improvement string,
      cleanliness_score string,
      discharge_achievment string,
      discharge_improvement string,
      discharge_score string,
      overall_achievment string,
      overall_improvement string,
      overall_score string,
      base_score string,
      consistency_score string
    )
     ROW FORMAT DELIMITED
     FIELDS TERMINATED BY ','
     STORED AS TEXTFILE
      LOCATION '/user/w205/hospital_compare/5';

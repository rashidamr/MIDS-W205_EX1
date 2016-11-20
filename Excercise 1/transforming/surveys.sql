CREATE TABLE surveys AS SELECT provider_id, hospital_name,
substring(overall_achievment,1,1) AS overall_achievment,
substring(overall_improvement,1,1) AS overall_improvement,
substring(overall_score,1,1) AS overall_score,
(base_score + consistency_score) / 2 AS global_score
FROM import_surveys_responses
WHERE import_surveys_responses.zip_code >1;

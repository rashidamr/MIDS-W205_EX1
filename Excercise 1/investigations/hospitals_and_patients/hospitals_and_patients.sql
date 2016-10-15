SELECT CORR(hospitals.av_score, surveys.global_score)
FROM hospitals JOIN surveys
ON hospitals.hospital_name = surveys.hospital_name;

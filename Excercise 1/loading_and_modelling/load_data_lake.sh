hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare/1
hdfs dfs -mkdir /user/w205/hospital_compare/2
hdfs dfs -mkdir /user/w205/hospital_compare/3
hdfs dfs -mkdir /user/w205/hospital_compare/4
hdfs dfs -mkdir /user/w205/hospital_compare/5


wget https://s3.eu-central-1.amazonaws.com/arashid/Personal/import_hospitals.csv
wget https://s3.eu-central-1.amazonaws.com/arashid/Personal/import_measures.csv
wget https://s3.eu-central-1.amazonaws.com/arashid/Personal/import_effective_care.csv
wget https://s3.eu-central-1.amazonaws.com/arashid/Personal/import_readmissions.csv
wget https://s3.eu-central-1.amazonaws.com/arashid/Personal/import_surveys_responses.csv


hdfs dfs -put import_hospitals.csv /user/w205/hospital_compare/1
hdfs dfs -put import_measures.csv /user/w205/hospital_compare/2
hdfs dfs -put import_effective_care.csv /user/w205/hospital_compare/3
hdfs dfs -put import_readmissions.csv /user/w205/hospital_compare/4
hdfs dfs -put import_surveys_responses.csv /user/w205/hospital_compare/5

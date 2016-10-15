
CREATE TABLE variability AS SELECT measure_id, sum(score) AS total_score,
avg(score) AS av_score, stddev(score) AS stddev_score, count(score) AS count
FROM import_effective_care
WHERE import_effective_care.zip_code >1 AND import_effective_care.score >= 0
GROUP BY measure_id;

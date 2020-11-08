CREATE OR REPLACE VIEW vw_age_groups AS
SELECT 
SUM(CASE WHEN trunc(months_between(sysdate, d.birth_date)/12) < 20 THEN 1 ELSE 0 END) AS "Under 20",
SUM(CASE WHEN trunc(months_between(sysdate, d.birth_date)/12) BETWEEN 20 AND 25 THEN 1 ELSE 0 END) AS "Between 20-25",
SUM(CASE WHEN trunc(months_between(sysdate, d.birth_date)/12) BETWEEN 25 AND 30 THEN 1 ELSE 0 END) AS "Between 25-30",
SUM(CASE WHEN trunc(months_between(sysdate, d.birth_date)/12) BETWEEN 30 AND 35 THEN 1 ELSE 0 END) AS "Between 30-35",
SUM(CASE WHEN trunc(months_between(sysdate, d.birth_date)/12) BETWEEN 35 AND 40 THEN 1 ELSE 0 END) AS "Between 35-40",
SUM(CASE WHEN trunc(months_between(sysdate, d.birth_date)/12) > 40 THEN 1 ELSE 0 END) AS "Over 40"
FROM donor d;
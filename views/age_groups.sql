CREATE VIEW vw_age_groups AS
SELECT SUM(CASE WHEN trunc(months_between(sysdate, d.birth_date)/12) < 20 THEN 1 ELSE 0 END) AS "Under 20"
FROM donor d;
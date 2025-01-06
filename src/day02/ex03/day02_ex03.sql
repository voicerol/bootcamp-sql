WITH cte(missing_date) AS 
    (SELECT DI.DATE as missing_date
    FROM GENERATE_SERIES('2022-01-01', '2022-01-10', interval '1 day') as DI)
SELECT cte.missing_date 
FROM cte
LEFT JOIN 
    (SELECT DISTINCT pv.visit_date
    FROM person_visits pv
    WHERE pv.person_id = 1 OR pv.person_id = 2) as VISITS
ON cte.missing_date = VISITS.visit_date
WHERE VISITS.visit_date IS NULL
ORDER BY cte.missing_date;
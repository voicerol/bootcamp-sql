SELECT DINTERVAL.date as missing_date
FROM GENERATE_SERIES('2022-01-01', '2022-01-10', interval '1 day') as DINTERVAL
LEFT JOIN 
    (SELECT DISTINCT visit_date
    FROM person_visits
    WHERE person_id = 1 OR person_id = 2) as VISIT_ID_1or2 
ON DINTERVAL.date=VISIT_ID_1or2.visit_date
WHERE VISIT_ID_1or2.visit_date is NULL
ORDER BY missing_date;
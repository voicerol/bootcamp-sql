SELECT DISTINCT g_days AS missing_dates 
FROM v_generated_dates GD
    LEFT JOIN person_visits PV ON GD.g_days = PV.visit_date
WHERE PV.visit_date IS NULL
ORDER BY missing_dates;
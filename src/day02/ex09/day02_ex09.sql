SELECT DISTINCT PRS.name 
FROM person PRS
LEFT JOIN person_order ORD ON PRS.id = ORD.person_id
LEFT JOIN menu MN ON MN.id = ORD.menu_id
WHERE PRS.gender = 'female'
    AND (
        MN.pizza_name LIKE '%cheese%'
        OR MN.pizza_name LIKE '%pepperoni%'
    )
GROUP BY PRS.name
    HAVING SUM(CASE WHEN MN.pizza_name LIKE '%cheese%' THEN 1 ELSE 0 END) > 0
        AND SUM(CASE WHEN MN.pizza_name LIKE '%pepperoni%' THEN 1 ELSE 0 END) > 0
ORDER BY PRS.name;
SELECT DISTINCT PRS.name FROM person PRS
LEFT JOIN person_order ORD ON PRS.id = ORD.person_id
LEFT JOIN menu MN ON MN.id = ORD.menu_id
WHERE PRS.gender = 'male' 
    AND (PRS.address LIKE 'Moscow' OR PRS.address LIKE 'Samara')
    AND (MN.pizza_name LIKE 'mushroom%' OR MN.pizza_name LIKE 'pepperoni%')
ORDER BY PRS.name DESC;
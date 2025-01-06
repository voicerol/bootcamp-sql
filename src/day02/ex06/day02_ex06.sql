SELECT 
    MN.pizza_name as pizza_name, 
    PZR.name as pizzeria_name
FROM menu MN
LEFT JOIN pizzeria PZR ON MN.pizzeria_id = PZR.id
LEFT JOIN person_order ORD ON MN.id = ORD.menu_id
LEFT JOIN person PRS ON ORD.person_id = PRS.id 
    WHERE PRS.name LIKE 'Denis' OR PRS.name LIKE 'Anna'
ORDER BY pizza_name, pizzeria_name;
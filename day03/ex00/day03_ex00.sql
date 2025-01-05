SELECT MN.pizza_name, MN.price, PZR.name AS pizzeria_name, PV.visit_date FROM menu MN
LEFT JOIN pizzeria PZR ON MN.pizzeria_id = PZR.id
LEFT JOIN person_visits PV ON PZR.id = PV.pizzeria_id
LEFT JOIN person PRS ON PV.person_id = PRS.id
WHERE PRS.name LIKE 'Kate' AND (MN.price BETWEEN 800 AND 1000)
ORDER BY MN.pizza_name, MN.price, pizzeria_name;
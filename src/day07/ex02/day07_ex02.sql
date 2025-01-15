(
    SELECT pizzeria.name, COUNT(person_order.id) as count,  'order' AS action_type
FROM person_order
    JOIN menu ON person_order.menu_id = menu.id
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY pizzeria.name
ORDER BY count DESC, pizzeria.name
LIMIT 3
)
UNION
(
SELECT pizzeria.name, COUNT(person_visits.id) as count,  'visit' AS action_type
FROM person_visits
    JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
GROUP BY pizzeria.name
ORDER BY count DESC, pizzeria.name
LIMIT 3
)
ORDER BY action_type, count DESC;
SELECT person.address, pizzeria.name, COUNT(*) as count_of_orders
FROM person
    JOIN person_order ON person_order.person_id = person.id
    JOIN menu ON person_order.menu_id = menu.id
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY person.address, pizzeria.name
ORDER BY 1, 2;
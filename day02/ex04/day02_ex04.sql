SELECT 
    M.pizza_name, 
    P.name AS pizzeria_name,
    M.price
FROM menu M
LEFT JOIN pizzeria P ON P.id = M.pizzeria_id 
WHERE 
    M.pizza_name LIKE 'mushroom%' OR M.pizza_name LIKE 'pepperoni%'
ORDER BY M.pizza_name, pizzeria_name;

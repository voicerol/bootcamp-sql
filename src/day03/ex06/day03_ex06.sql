-- Active: 1718007058312@@212.119.215.53@5432@school21
SELECT DISTINCT
    MN1.pizza_name,
    PZ1.name AS pizzeria_name_1,
    PZ2.name AS pizzeria_name_2,
    MN1.price
FROM menu MN1
    JOIN menu MN2 ON MN1.price = MN2.price
    JOIN pizzeria PZ1 ON MN1.pizzeria_id = PZ1.id
    JOIN pizzeria PZ2 ON MN2.pizzeria_id = PZ2.id
WHERE 
    MN1.id > MN2.id AND PZ1.name <> PZ2.name
ORDER BY MN1.pizza_name;
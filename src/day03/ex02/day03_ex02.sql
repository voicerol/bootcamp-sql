SELECT 
    MN.pizza_name, 
    MN.price, 
    PZR.name AS pizzeria_name
FROM 
    menu MN,
    pizzeria PZR
WHERE 
    MN.pizzeria_id = PZR.id
    AND NOT EXISTS (
        SELECT * FROM person_order PO
        WHERE PO.menu_id = MN.id
    )
ORDER BY 
    MN.pizza_name, MN.price;
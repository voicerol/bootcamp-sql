CREATE VIEW v_price_with_discount AS
    SELECT 
        PRS.name, 
        MN.pizza_name, 
        MN.price, 
        CAST(price - price * 0.1 AS INTEGER) AS discount_price
    FROM person PRS
        JOIN person_order PO ON PRS.id = PO.person_id
        JOIN menu MN ON PO.menu_id = MN.id
ORDER BY PRS.name, MN.pizza_name;
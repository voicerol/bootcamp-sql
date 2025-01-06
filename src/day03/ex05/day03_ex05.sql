SELECT PZ.name AS pizzeria_name
FROM person_visits PV
    FULL JOIN person_order PO ON PO.order_date = PV.visit_date
    JOIN pizzeria PZ ON PZ.id = PV.pizzeria_id
    JOIN person PRS ON PRS.id = PV.person_id
WHERE PRS.name LIKE 'Andrey'
    AND PO.id IS NULL
ORDER BY pizzeria_name;
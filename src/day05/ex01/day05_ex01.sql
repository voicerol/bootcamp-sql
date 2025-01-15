SET enable_seqscan TO ON;
EXPLAIN ANALYZE 
    SELECT MNU.pizza_name, PZR.name FROM menu MNU
    JOIN pizzeria PZR on MNU.pizzeria_id= PZR.id;

SET enable_seqscan TO OFF;
EXPLAIN ANALYZE
    SELECT MNU.pizza_name, PZR.name FROM menu MNU
    JOIN pizzeria PZR on MNU.pizzeria_id= PZR.id; 
    

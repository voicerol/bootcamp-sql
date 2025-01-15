CREATE INDEX idx_person_name  ON person(UPPER(name));

SET enable_seqscan TO ON;
EXPLAIN ANALYSE
    SELECT * FROM person
    WHERE UPPER(name) LIKE 'DENIS';

SET enable_seqscan TO OFF;
EXPLAIN ANALYSE
    SELECT * FROM person
    WHERE UPPER(name) LIKE 'DENIS';

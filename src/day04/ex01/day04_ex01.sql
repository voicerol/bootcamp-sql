-- Active: 1718007058312@@212.119.215.53@5432@school21
SELECT name FROM v_persons_male
UNION
SELECT name from v_persons_female
ORDER BY name;
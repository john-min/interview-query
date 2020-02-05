/*
CREATE TABLE scores(
    id integer,
    student varchar(40),
    score integer
);

INSERT INTO 
  scores (id, student, score)
VALUES 
  (1, 'Jack', 1700),
  (2, 'Alice', 2010),
  (3, 'Miles', 2200),
  (4, 'Scott', 2100);
*/

SELECT
  a.student, 
  b.student, 
  abs(a.score - b.score) AS diff
FROM scores a
JOIN scores b
WHERE a.id != b.id AND b.id > a.id
ORDER BY diff
LIMIT 1

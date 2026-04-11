-- Question 1

-- Q1
SELECT * 
FROM Worker
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

-- Q2
SELECT * 
FROM Worker
WHERE FIRST_NAME IN ('Vipul', 'Satish');

-- Q3
SELECT * 
FROM Worker
WHERE FIRST_NAME LIKE '_____h';

-- Q4
SELECT * 
FROM Worker
WHERE SALARY BETWEEN 100000 AND 500000;

-- Q5
SELECT FIRST_NAME, LAST_NAME, COUNT(*)
FROM Worker
GROUP BY FIRST_NAME, LAST_NAME
HAVING COUNT(*) > 1;

-- Q6
SELECT * 
FROM Worker
LIMIT 6;

-- Q7
SELECT DEPARTMENT, COUNT(*) AS total_people
FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;

-- Q8
SELECT DEPARTMENT, COUNT(*) AS total_people
FROM Worker
GROUP BY DEPARTMENT;

-- Q9
SELECT W.*
FROM Worker W
INNER JOIN (
    SELECT DEPARTMENT, MAX(SALARY) AS max_salary
    FROM Worker
    GROUP BY DEPARTMENT
) M
ON W.DEPARTMENT = M.DEPARTMENT 
AND W.SALARY = M.max_salary;


-- Question 2 (Student Table)

-- 1
SELECT * FROM student;

-- 2
SELECT StdName, DOB FROM student;

-- 3
SELECT * FROM student WHERE percentage >= 80;

-- 4
SELECT StdName, Stream, Percentage 
FROM student 
WHERE percentage > 80;

-- 5
SELECT * 
FROM student 
WHERE stream = 'Science' AND percentage > 75;

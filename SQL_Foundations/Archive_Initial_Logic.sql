/* TECHNICAL DRILL: Pattern Matching & Logic Precision
Goal: Solving business requirements from memory using LIKE, %, and _
*/

-- Challenge 1: Find all employees whose names start with 'J'
-- Professional Note: The % wildcard represents 'any number of characters'
SELECT * FROM Employees 
WHERE FirstName LIKE 'J%';

-- Challenge 2: Find names that are exactly 4 letters long and end in 'y'
-- Professional Note: Using the underscore (_) for single-character placeholders
SELECT * FROM Employees 
WHERE FirstName LIKE '___y';

-- Challenge 3: Find "ann" anywhere in the name (Case Insensitive check)
-- Professional Note: Surrounding the string with % ensures it catches middle occurrences
SELECT * FROM Employees 
WHERE FirstName LIKE '%ann%';

/* PROJECT: Surgical Sieve - Pattern Matching & Logic Precision
CONTEXT: Refining data retrieval techniques using MySQL wildcards.
OBJECTIVE: Eliminate "Excel-style" exact match errors in relational databases.
*/

-- DRILL 1: Variable-Length Search (The Percentage %)
-- Requirement: Identify all records starting with 'J'.
-- Note: Unlike Excel, SQL requires '%' to represent 'any characters following'.
SELECT * FROM Employees 
WHERE FirstName LIKE 'J%';

-- DRILL 2: Fixed-Length Precision (The Underscore _)
-- Requirement: Identify names exactly 4 letters long ending in 'y'.
-- Note: Each '_' represents exactly one character. This prevents 'Jeremy' from appearing.
SELECT * FROM Employees 
WHERE FirstName LIKE '___y';

-- DRILL 3: Substring Discovery
-- Requirement: Locate 'ann' regardless of position.
-- Note: Surrounding with '%' ensures the query is "Position-Agnostic."
SELECT * FROM Employees 
WHERE FirstName LIKE '%ann%';
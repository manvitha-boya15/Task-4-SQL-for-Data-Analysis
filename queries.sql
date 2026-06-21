-- =====================================
-- Task 4 : SQL for Data Analysis
-- Dataset : Sample Superstore
-- Tool : DB Browser for SQLite
-- =====================================

-- SELECT
SELECT *
FROM "Sample_ Superstore"
LIMIT 10;

-- WHERE
SELECT *
FROM "Sample_ Superstore"
WHERE State = 'California';

-- ORDER BY
SELECT *
FROM "Sample_ Superstore"
ORDER BY Sales DESC
LIMIT 10;

-- GROUP BY
SELECT State,
SUM(Sales) AS Total_Sales
FROM "Sample_ Superstore"
GROUP BY State;

-- INNER JOIN
SELECT
s."Order ID",
s."Customer ID",
c.Segment,
c.City,
s.Sales
FROM "Sample_ Superstore" s
INNER JOIN Customers c
ON s."Customer ID" = c."Customer ID"
LIMIT 10;

-- LEFT JOIN
SELECT
s."Order ID",
s."Customer ID",
c.City,
s.Sales
FROM "Sample_ Superstore" s
LEFT JOIN Customers c
ON s."Customer ID" = c."Customer ID"
LIMIT 10;

-- SUBQUERY
SELECT *
FROM "Sample_ Superstore"
WHERE Sales >
(
SELECT AVG(Sales)
FROM "Sample_ Superstore"
);

-- AGGREGATE FUNCTIONS
SELECT
SUM(Sales) AS Total_Sales,
AVG(Profit) AS Average_Profit
FROM "Sample_ Superstore";

-- VIEW
CREATE VIEW Sales_Analysis AS
SELECT
State,
SUM(Sales) AS Total_Sales
FROM "Sample_ Superstore"
GROUP BY State;

SELECT *
FROM Sales_Analysis;

-- INDEX
CREATE INDEX IF NOT EXISTS idx_state
ON "Sample_ Superstore"(State);

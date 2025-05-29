# 🧠 Technical-Personal Journal  
Course: Introduction to Databases  
Institution: Skilling Center TecMilenio  
Start Date: 2025-04-29  
Documented Session: 2025-05-23  
Week: 5  
Class: 2 of 10 (Databases Module)  
Topic: SQL Grouping, Aggregation, Pattern Matching and Subqueries

---

## 🧩 Class Summary
The second session of the module "Introduction to Databases" continued our hands-on exploration of SQL through the MySQL Workbench interface. 
This class was focused on mastering aggregation functions, pattern filtering with wildcards, and both simple and nested subqueries.

We practiced advanced filtering using `LIKE`, `NOT LIKE`, `%`, and `_`, applied `GROUP BY` with aggregation functions such as `SUM`, `COUNT`, `AVG`, `MIN`, `MAX`, and explored use cases for filtering groups with `HAVING`. 
The core part of the class was the design and execution of subqueries across different SQL clauses—`SELECT`, `FROM`, `WHERE`, and `HAVING`—to filter, compare, and retrieve conditional data. 
All activities were guided and executed using structured exercises based on our previously generated `Tienda` database schema.

---

## 🧱 Core Concepts Covered

### 🔹 Pattern Matching with `LIKE`
We used the `LIKE` operator in conjunction with wildcards to filter strings based on patterns:
- `%` (percent) represents zero or more characters
- `_` (underscore) represents exactly one character

Example filters included:
- RFC codes ending in “XX2” → `%XX2`
- Names starting with “J” → `J%`
- Names where second letter is “o” → `_o%`

### 🔹 Aggregation and Grouping
We used `GROUP BY` to group rows and apply summary statistics with aggregation functions:
- `SUM(column)` – total sum
- `AVG(column)` – average value
- `COUNT(*)` – number of rows per group
- `MIN(column)` / `MAX(column)` – lowest/highest values

Use cases:
- Total value of all articles with price greater than or equal to 50
- Number of sales per article or per employee
- Average price of products with specific conditions

### 🔹 Subqueries in SQL
We explored subqueries (also called nested queries) used within:
- `SELECT` – to return calculated values or identifiers
- `WHERE` – to filter based on dynamic sets
- `FROM` – to create virtual tables
- `HAVING` – to filter aggregate results after grouping

Use cases:
- Employees with the highest total sales
- Articles that haven’t been sold at all
- Employees who sold during February
- Highest selling article by count

---

## 🧰 Practical Tools and Activities

We executed over 20 exercises inside MySQL Workbench, based on the `Tienda` schema from the previous session. These included:

### 📄 Filtering Exercises with `LIKE`
```sql
SELECT * FROM empleado WHERE rfc LIKE '%XX2';
SELECT * FROM empleado WHERE nombre LIKE 'J%';
```

### 📊 Aggregation Examples
```sql
-- Total value of articles over $50
SELECT SUM(precio * cantidad) AS total FROM articulo WHERE precio >= 50;

-- Average price by article name
SELECT nombre, AVG(precio) AS promedio FROM articulo GROUP BY nombre;
```

### 🔄 Subquery Examples
```sql
-- Most sold article
SELECT nombre FROM articulo
WHERE id_articulo = (
  SELECT articulo_id_articulo FROM venta
  GROUP BY articulo_id_articulo
  ORDER BY COUNT(*) DESC
  LIMIT 1
);

-- Employees with sales in February
SELECT * FROM empleado
WHERE id_empleado IN (
  SELECT empleado_id_empleado FROM venta
  WHERE fecha BETWEEN '2023-02-01' AND '2023-02-28'
);
```

All queries were validated by the instructor and executed within a sandboxed database environment for academic learning.

---

## 🌿 Wellness Practice
At the beginning of class, we engaged in a guided emotional awareness and breathing exercise to enhance focus. This included 3 minutes of deep breathing, emotional reflection, and postural awareness.

The objective was to activate the parasympathetic system before cognitive load, supporting better information retention and emotional regulation.

---

## 📘 Knowledge Acquired
- How to apply pattern-based filters with `LIKE`, `%`, and `_`
- Using `GROUP BY` and aggregation to summarize relational data
- Distinguishing between filtering with `WHERE` and `HAVING`
- Implementing subqueries across different clauses for dynamic analysis
- Enhancing modularity and readability in SQL by nesting logic

---

## 🧠 Reflections
> Today’s class moved from operational SQL into more analytical territory. 
Grouping, aggregation, and subqueries allow us to derive business-level insights from structured data. 
These tools provide the basis for dashboarding, trend analysis, and anomaly detection. The use of nested logic reflects real-world data interrogation and prepares us for more complex workflows such as joins, views, and data pipelines.

---

## 📎 Resources Used
- Prework 2 PDF: SQL logic, wildcards, and filtering
- Tema 2 PDF: Grouping, aggregation, and subqueries in MySQL
- Guided activity (Sesión 2): Practical queries with nested logic

---

## ✅ Checkpoints
- [x] Applied `LIKE` filtering with wildcards
- [x] Used aggregation functions (`SUM`, `AVG`, `COUNT`)
- [x] Grouped records using `GROUP BY`
- [x] Filtered grouped results using `HAVING`
- [x] Constructed and executed multiple subqueries
- [x] Completed wellness and emotional focus practice

---

*Session completed and documented on 2025-05-23*

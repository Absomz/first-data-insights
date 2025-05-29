# 🧾 Professional Journal Entry  
**Course:** Probability and Statistics for Data Analysis  
**Institution:** Skilling Center TecMilenio  
**Start Date:** 2025-04-28  
**Documented Session:** 2025-05-27  
**Week:** 5  
**Class:** 3 of 10 (Databases Module)  
**Topic:** SQL Joins and Views – Relational Querying in MySQL  

---

## 📌 Session Overview
This third session in the *Introduction to Databases* module introduced students to the core logic of **relational querying**, focusing specifically on `JOIN` operations and `VIEWS` in SQL using **MySQL Workbench**. We applied these concepts using two distinct database models provided for hands-on practice.

---

## 🎯 Objectives of the Session

- Understand the purpose and differences between INNER, LEFT, and RIGHT JOINs.
- Apply join logic to real-life business data (store and returns data).
- Learn how to create and use VIEWS in MySQL.
- Write complex queries involving multiple table relationships.
- Begin building analytical reports using multi-table queries.

---

## 🛠️ Tools & Data Models Used

| Tool                  | Description                                  |
|-----------------------|----------------------------------------------|
| MySQL Workbench      | SQL development and modeling tool            |
| `Tienda.mwb`         | Retail store data model                      |
| `Devoluciones.mwb`   | Product returns database schema              |
| `Query Tienda.sql`   | Class SQL file for the retail schema         |
| `Query Devoluciones.sql` | SQL file used to analyze returns        |

All exercises were performed directly within the .mwb schema environments and executed through SQL scripts.

---

## 📘 Concept Breakdown

### 🔗 JOINs in SQL

A `JOIN` clause allows querying data from multiple tables by linking them based on common keys.

#### 🔹 INNER JOIN
Returns only the rows where a match exists in both tables.
```sql
SELECT c.nombre, p.fecha
FROM cliente c
INNER JOIN pedido p ON c.id_cliente = p.id_cliente;
```
*Use case:* Customers who have made at least one purchase.

#### 🔹 LEFT JOIN
Returns all records from the left table and matched ones from the right.
```sql
SELECT c.nombre, p.fecha
FROM cliente c
LEFT JOIN pedido p ON c.id_cliente = p.id_cliente;
```
*Use case:* Report including all customers, even those with no orders.

#### 🔹 RIGHT JOIN
Returns all rows from the right table and matched ones from the left.
```sql
SELECT p.fecha, c.nombre
FROM pedido p
RIGHT JOIN cliente c ON c.id_cliente = p.id_cliente;
```
*Use case:* Less common; useful when preserving right-table data is critical.

---

### 🧩 Practical Examples with `Tienda.mwb`

**Objective:** Display complete sales information by joining `cliente`, `pedido`, and `pedido_detalle`.
```sql
SELECT c.nombre, p.fecha, pd.cantidad, pd.total
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente
JOIN pedido_detalle pd ON p.id_pedido = pd.id_pedido;
```
We learned to create views for reusable queries:
```sql
CREATE VIEW vista_ventas AS
SELECT producto.nombre, SUM(pd.cantidad) AS total_vendido
FROM producto
JOIN pedido_detalle pd ON producto.id_producto = pd.id_producto
GROUP BY producto.nombre;
```

---

### 🔁 Practical Examples with `Devoluciones.mwb`

Analyzed return frequency per product and store location.
```sql
SELECT p.nombre_producto, COUNT(d.id_devolucion) AS total_devoluciones
FROM producto p
JOIN devolucion d ON p.id_producto = d.id_producto
GROUP BY p.nombre_producto;
```
*Used joins to create analytical views on return patterns.*

---

## 📝 In-Class Activities

**From `Sesión 3 – Actividad Guiada`**:
- Exercises applying INNER, LEFT, and RIGHT JOIN logic across both schemas.
- Queries combining sales and returns data to evaluate product performance.
- Views created for reuse in reporting environments.
- Reflections on database normalization and table relationships.

**From `Prework 3`**:
- Concept review and syntax examples before class.
- Prepared diagrams identifying primary/foreign keys among tables.

---

## ✅ Key Learnings

- JOINs are essential for analyzing multi-table relationships in relational databases.
- Views reduce redundancy and simplify query logic.
- LEFT and RIGHT JOINs allow flexible inclusion of unmatched rows for more inclusive reporting.
- Real-world scenarios often require joining 3 or more tables to create useful business reports.

---

## 🧠 Personal Reflection

This class was a pivotal point in understanding the **relational power** of SQL. Knowing how to work with multiple tables and properly join them is essential for building dashboards and reports that make real-world impact. I especially appreciated the ability to simplify logic with views and now see how databases can serve not just storage—but insights.

I plan to revisit these queries to experiment with nested joins and use `WHERE` clauses within views to control context.

---

## 📎 Referenced Materials

- `Tema 3.pdf` – Conceptual notes on Joins and Views.
- `Sesión 3_actividad guiada.pdf` – Exercise guide.
- `Prework 3.pdf` – Preparation material with examples.
- SQL files used: `Query Tienda.sql`, `Query Devoluciones.sql`

---

## 🧭 Next Steps
- Explore subqueries and nested joins.
- Optimize joins using indexed keys.
- Practice creating more complex views with filtering and aggregation.

---

## 🗂️ File Name
`2025-05-28_Data_Analysis_Bootcamp_Class07.md`

# 🧠 Technical-Personal Journal

**Course:** Introduction to Databases
**Institution:** Skilling Center TecMilenio
**Start Date:** 2025-04-29
**Documented Session:** 2025-05-27
**Week:** 6
**Class:** 3 of 10 (Databases Module)
**Topic:** SQL Joins and Views – Relational Data Modeling in Practice

---

## ✳️ Class Summary

The third class of the module "Introduction to Databases" focused on deepening our understanding of JOIN operations and Views within MySQL using the Workbench interface.

We began by reviewing the conceptual foundation of JOINs: what they are, how they relate to relational models, and why they are critical for working with multi-table schemas. The instructor emphasized the real-world application of JOINs, particularly how databases are rarely flat structures and require combining information from related tables.

Once the basics were revisited, we performed hands-on work using SQL scripts. The class focused on applying:

* `INNER JOIN` to extract intersecting data between two tables.
* `LEFT JOIN` to preserve all records from the primary table and observe how `NULL` values propagate.
* `RIGHT JOIN` to examine mirror behavior compared to LEFT JOIN.
* `WHERE`, `HAVING`, and conditional filters to refine results.

Additionally, we were introduced to Views — persistent virtual tables that simplify complex queries or restrict direct access to data. The class included a live demo and guided creation of Views using `CREATE VIEW`, followed by `SELECT` queries and ending with `DROP VIEW` examples. Real scenarios discussed involved summarizing orders by customer or simplifying nested queries using predefined Views.

We ran queries based on the Tienda schema provided earlier in `.mwb` format, supported by `Query Tienda.sql`. The exercises were executed both collaboratively and individually. Each student was required to write and test a minimum of three JOIN-based queries and two Views.

---

## 🔶 Core Concepts Covered

### 🔹 SQL JOINs

* **Fundamentals of JOIN operations** in relational models
* Syntax and use cases for:

  * `INNER JOIN`: Rows that exist in both tables
  * `LEFT JOIN`: All from left table, `NULL` for unmatched right
  * `RIGHT JOIN`: All from right table, `NULL` for unmatched left
* **JOIN filtering** using `WHERE`, `HAVING`, and logical operators
* **Implicit vs. explicit JOIN syntax**
* Understanding how `NULL` affects JOIN logic and result sets

### 🔹 Views in MySQL

* **Definition**: Virtual tables saved for reuse
* **Syntax:** `CREATE VIEW`, `SELECT FROM view_name`, `DROP VIEW`
* **Use Cases:**

  * Abstracting complex logic
  * Reusability of filtered queries
  * Restricting user access or exposing partial datasets
* Comparison between Views and subqueries

---

## 🧪 Tools and Exercises

* **Platform Used:** MySQL Workbench
* **Database Schema:** Tienda.mwb
* **Files Executed:**

  * `Query Tienda.sql`: JOINs and View operations

**In-Class Exercises:**

1. **Exercise 1 – Basic INNER JOIN:**

   ```sql
   SELECT c.name, o.order_date
   FROM customers c
   INNER JOIN orders o ON c.id = o.customer_id;
   ```

   *Returns a list of customers and their corresponding orders.*

2. **Exercise 2 – LEFT JOIN with Filtering:**

   ```sql
   SELECT p.name, s.quantity
   FROM products p
   LEFT JOIN stock s ON p.id = s.product_id
   WHERE s.quantity IS NULL;
   ```

   *Finds products that are not currently in stock.*

3. **Exercise 3 – Creating a View:**

   ```sql
   CREATE VIEW top_customers AS
   SELECT c.name, SUM(o.total) AS total_spent
   FROM customers c
   JOIN orders o ON c.id = o.customer_id
   GROUP BY c.name
   ORDER BY total_spent DESC
   LIMIT 5;
   ```

   *Creates a reusable view of top-spending customers.*

4. **Exercise 4 – Using the View:**

   ```sql
   SELECT * FROM top_customers;
   ```

   *Displays the simplified output of the predefined logic.*

5. **Exercise 5 – Dropping a View:**

   ```sql
   DROP VIEW IF EXISTS top_customers;
   ```

**In-Class Materials:**

* 📄 `Prework 3.pdf` – included theory and pre-lab challenges
* 📄 `Tema 3.pdf` – overview of JOINs and Views theory
* 📄 `Sesión 3_ actividad guiada.pdf` – step-by-step SQL exercises

---

## 🧭 Reflections and Takeaways

This class helped demystify JOIN logic and its powerful ability to reshape raw tabular data into useful, business-driven formats. I realized how essential JOINs are not just technically but conceptually—they reflect the interconnected nature of real-world data.

Views stood out as a great tool for refactoring frequently used queries. I can see how this adds value in enterprise scenarios with dashboards or audit trails.

Next steps will involve practicing with more JOIN types and nesting, as well as exploring performance trade-offs.

---

## ✅ Achievements Checklist

* [x] Executed `INNER`, `LEFT`, and `RIGHT JOIN` operations
* [x] Applied multi-condition filters with `WHERE` and `HAVING`
* [x] Created and queried custom Views
* [x] Understood structural advantages of using Views
* [x] Used Tienda schema as practical case study
* [x] Practiced all exercises listed in `Sesión 3_ actividad guiada.pdf`

---

## 📎 Attached Files and References

* 📄 `Prework 3.pdf`
* 📄 `Tema 3.pdf`
* 📄 `Sesión 3_ actividad guiada.pdf`
* 📁 `Tienda.mwb`
* 📁 `Query Tienda.sql`
* 🌐 [MySQL JOIN Documentation](https://dev.mysql.com/doc/)

---


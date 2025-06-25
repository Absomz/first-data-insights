🧠 Technical-Personal Journal

**Course:** Data Analysis Bootcamp  
**Institution:** Skilling Center TecMilenio  
**Start Date:** 2025-04-29  
**Documented Session:** 2025-06-19  
**Week:** 11  
**Class:** 10 of 10 (Databases Module)  
**Topic:** Final Project Submission & Comprehensive Feedback Analysis  

---

## 🎯 Focus of the Day

The final session culminated in presenting the **TaconMadre** database project and integrating detailed instructor feedback. Key objectives included:

* **Requirements Validation:** Cross-reference every project requirement with delivered artifacts to ensure full compliance or over-delivery.
* **Artifact Presentation:** Showcase ER diagrams, DDL scripts, data-loading scripts, curated SQL queries, and the consolidated test report in one cohesive package.
* **Feedback Assimilation:** Translate and expand on the instructor’s qualitative feedback to derive actionable insights and celebrate strengths.

This session validated technical mastery and highlighted areas for continuous professional growth.

## 📚 Project Requirements vs. Delivered Artifacts

| **Requirement**                                                                                                                                                         | **What Was Delivered**                                                                                                                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **1. ER Model and Data Narrative**                                                                                                                                      | • MySQL Workbench `.mwb` file with over 30 entities, complete PK/FK definitions, cardinalities, and domain color-coding.                                                                                                                       |
| • High-resolution PDF export of the ER diagram, annotated with business domain groupings and relationship icons for one-to-one, one-to-many, and many-to-many mappings. |                                                                                                                                                                                                                                                |
| **2. Database Creation Script**                                                                                                                                         | • `taconMadre_project_FINAL.sql` with `CREATE DATABASE`, `CREATE TABLE`, normalized structures to 3NF, `ENUM` definitions for statuses and channels, composite indexes (`fk_*_idx`), and inline `COMMENT` descriptions for tables and columns. |
| **3. Sample Data Insertion**                                                                                                                                            | • `consultas.sql` containing over 250 meticulously ordered `INSERT` statements for users, employees, suppliers, locations, products, warehouses, orders, sales, purchases, and junction tables—ensuring no referential integrity violations.   |
| **4. Example Business Queries**                                                                                                                                         | • 20+ parameterized SQL queries demonstrating:                                                                                                                                                                                                 |

* Monthly and channel revenue breakdowns.
* Top 5 products by volume and revenue.
* Customer lifetime value calculations.
* Pending orders aging report (>48 hours).
* Inventory thresholds across warehouses.                                                                                                                                                                                                   |
  \| **5. Comprehensive Test Report**                                  | • PDF (`Abner Soberon_Proyecto_Base_de_datos.pdf`) including:
* Screenshots of CRUD operations and data validations.
* `EXPLAIN` outputs for complex joins and aggregations.
* Orphan-key checks with zero anomalies.
* Load testing notes for sample volumes.                                                                                                                                                       |
  \| **6. Project Documentation & Packaging**                          | • `Abner Soberon_Proyecto_Base_de_datos.zip` containing:
* A structured DOCX report detailing project objectives, design rationale, normalization approach, indexing strategy, and query explanations.
* All SQL scripts, ER model, test artifacts, and README for navigation.                                                                                                                                                                             |

> **Outcome:** All deliverables either matched or exceeded the instructor’s original specifications, demonstrating professional thoroughness and technical depth.

## 🧑‍🏫 Instructor Feedback Summary (Translated & Expanded)

**Evaluator:** Ricardo Alfredo Monroy Rodríguez (Introduction to Databases)
**Date:** 2025-06-23 16:13
**Score:** 100/100 points

> “Hello, Abner. I have reviewed your project, and congratulations—this submission surpasses both scope and requirements. 
   You delivered more than what was asked. Regarding the database design, I can see that it covers the majority of use cases for a food-ordering business. 
   Your SQL queries are executed with precision and depth. Overall, an excellent job.”

**Key Praise:**

* **Scope Overachievement:** Went beyond minimal requirements by including advanced analytics queries and deployment considerations.
* **Use-Case Coverage:** Comprehensive modeling of multiple sales channels (in-store, web, third-party platforms).
* **Query Proficiency:** Demonstrated mastery of joins, subqueries, aggregations, window functions, and performance tuning.

**Recommendations for Next Steps:**

1. **Deepen Procedural Logic:** Implement stored procedures, triggers, and functions using MySQL’s procedural language to encapsulate business logic within the database.
2. **Adopt Window Functions:** Leverage `ROW_NUMBER()`, `RANK()`, `LEAD()`, and `LAG()` for advanced trend analysis and reporting inside pure SQL.
3. **Expand Full-Stack Horizons:** Begin exploring backend development (e.g., Node.js, Python) and frontend frameworks (React, Vue) to build end-to-end applications that interface with your TaconMadre schema.

## 🧠 Insights and Reflections

* **Professional Overdelivery:** Exceeding project requirements added substantial value for stakeholders, simulating real-world client expectations.
* **Holistic Documentation:** Bundling design artifacts, scripts, and reports into an organized package creates a turnkey solution for future team members or clients.
* **Feedback as Growth Catalyst:** Clear, positive reinforcement from the instructor fuels confidence, while targeted recommendations outline the precise skills to cultivate next.

## 📌 Action Plan & Continuous Learning

* **Stored Procedures & Triggers:** Build at least five stored procedures and three audit triggers to automate common operations (e.g., order confirmation, stock reconciliation).
* **Window Function Prototypes:** Write sample queries using window functions to calculate moving averages, percentiles, and top-n reports directly in SQL.
* **Backend API Development:** Develop a RESTful API with Express.js to expose CRUD and reporting endpoints, integrating role-based access control.
* **Frontend Dashboard Mockup:** Create a React dashboard visualizing key metrics (sales by channel, inventory alerts) using a charting library (Recharts or Chart.js).

## 💬 Motivation and Intention

Delivering this capstone project confirmed my capability to architect, implement, and document a robust relational database system. The instructor’s exemplary feedback underscores readiness to transition into full-stack roles and tackle even more sophisticated data challenges.

## 🔁 Module Integration & Path Forward

This final installment unites all prior lessons:

* **Classes 1–4:** Data modeling, normalization, and fundamental CRUD operations.
* **Classes 5–6:** Advanced NoSQL querying and indexing strategies.
* **Classes 7–8:** Aggregation pipelines, read-only views, and cloud deployment patterns.
* **Class 9:** Production-grade relational schema design, data ingestion, and BI query development.
* **Class 10:** Professional packaging of deliverables and strategic feedback incorporation.

---

*This extensively augmented entry emphasizes my project’s strengths, captures the instructor’s laudatory feedback in full English translation, and sets a clear roadmap for my continued growth in database engineering and full-stack development.*

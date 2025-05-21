# 🧠 Technical-Personal Journal  
**Course:** Introduction to Databases  
**Institution:** Skilling Center TecMilenio  
**Start Date:** 2025-04-29  
**Documented Session:** 2025-05-20  
**Week:** 4  
**Topic:** SQL Fundamentals and DBMS Introduction

---

## 🧩 Class Summary
In this first session of the “Introduction to Databases” module, we explored the essential foundations of database systems, both conceptually and practically. 
We focused on defining what a database is, distinguishing it from a spreadsheet, and understanding how relational databases function through a Database Management System (DBMS). 
We studied the distinction between data and information, their respective roles in digital systems, and the technical infrastructure that supports data integrity, scalability, and accessibility. 
We also installed and configured MySQL Workbench, generated databases from entity-relationship models (ERDs), populated data using SQL, and explored the logic of queries using basic clauses. 
This session laid the groundwork for all future work in SQL and data-driven systems.

---

## 🧱 Core Concepts Covered

### 🗃 What is a Database?
A database is not simply a place to store data. 
It is a logically structured, interrelated collection of data designed to support the information needs of an organization or system. 
For example, a customer management database stores customer names, emails, purchase histories, and interactions in distinct but connected tables that can be queried and analyzed together. 
Unlike spreadsheets, databases can enforce rules (constraints), define relationships (keys), and handle thousands to millions of entries efficiently.

### 🧮 Data vs. Information
- **Data** refers to raw facts: values, symbols, or measurements without context. For example: “42”, “blue”, or “2023-12-01”.
- **Information** is data that has been processed to have meaning. For instance, “42 units sold on 2023-12-01” becomes information when placed in a sales context.
- Transforming data into information requires structure, classification, and relevance to a specific question or process.

### 🔐 Key Properties of Information
To be useful, information must be:

- **Accurate** – reflects true and verified values
- **Timely** – delivered at the right moment for decision-making
- **Relevant** – applicable to the user’s current task or need
These properties are the pillars of good database design, guiding normalization, constraints, and indexing strategies.

### ⚙️ DBMS – Database Management System
A DBMS acts as the interface between users, applications, and the actual data stored on disk. 
It offers a controlled environment where data can be defined (DDL), manipulated (DML), queried (SQL), and secured (roles and permissions). 
A good DBMS also ensures:

- **Atomicity** – all or nothing transaction handling
- **Consistency** – all data rules are enforced
- **Isolation** – transactions don’t interfere
- **Durability** – data survives crashes

### 🧩 Components of DBMS
- **DDL** (Data Definition Language): `CREATE`, `ALTER`, `DROP`
- **DML** (Data Manipulation Language): `INSERT`, `UPDATE`, `DELETE`, `SELECT`
- **Access and Recovery Management**: handles user privileges, backups, crash recovery
- **Query Processor**: interprets and optimizes SQL commands

### 🧪 SQL Fundamentals
Structured Query Language (SQL) is a **non-procedural**, **declarative** language that lets you describe *what* you want (not *how* to get it). This is a major paradigm shift from procedural coding (like Python, C, etc.).
- SQL works with **sets** of data (entire rows, filtered results)
- Highly readable and standard across platforms (MySQL, PostgreSQL, etc.)
- Enables:
  - Table and schema creation
  - Data population and manipulation
  - Analytical queries
  - Filtering, joining, grouping, sorting

---

## 🧰 Practical Tools and Activities

### 💻 MySQL Server + MySQL Workbench Setup
We installed MySQL Server Community Edition and MySQL Workbench on our machines, configuring a working local database environment. We created a new user and validated a successful connection.

### 📂 Exploring Tienda.mwb (Model-Based Design)
- Opened an `.mwb` file containing the ERD for the fictional business “Tienda”
- Visualized table relationships and attributes before executing code
- Generated SQL using the **Forward Engineer** tool
- Executed and verified schema creation inside the Workbench SQL tab

### 🧪 Manual Query Testing
We used fundamental commands to inspect structure:
- `SHOW DATABASES;` – list all databases
- `USE Tienda;` – select working database
- `SHOW TABLES;` – list all tables inside
- `DESCRIBE empleado;` – view table schema

### ✍️ Populating Data into Tables
Using `INSERT INTO`, we added rows to:
- `puesto` – job positions
- `empleado` – employees
- `articulo` – store inventory
Followed by `SELECT * FROM ...` to validate success.

### 🛒 Creating and Populating `venta` Table
We constructed a table for sales records with:
- Auto-incremented IDs
- Dates and foreign keys
- Inserted 15+ entries simulating real sales, with timestamps, articles sold, and employee IDs

### 🧠 Additional Mini-Project: `devoluciones`
Created a new database `devoluciones` containing:
- `productos` – catalog
- `devoluciones` – returned items
Practiced:
- Conditional filters with `WHERE`
- Range filters with `DATE_SUB(NOW(), INTERVAL x)`
- Multiple condition logic using `IN`, `AND`, `OR`
- Sorting results with `ORDER BY`, `LIMIT`

---

## 🌿 Wellness Break
A short breathing exercise was included to pause and regain cognitive focus. 
Reinforcing emotional regulation techniques is part of the bootcamp’s holistic approach. 
The instructor guided 3 minutes of deep diaphragmatic breathing, which helped settle mental fatigue from high cognitive load.

---

## 📘 Knowledge Acquired
- Mastery of what defines a database and its architecture
- Practical differentiation between raw data and contextualized information
- Installation and use of MySQL Workbench
- Use of ERDs as pre-execution planning tools
- Executing DDL and DML commands fluently
- Understanding SQL’s structure and execution model
- Applying logical conditions and time-based filters

---

## 🧠 Reflections
> This session reinforced the fundamental role of databases in digital systems.
> It provided a full-stack perspective: from theory (definitions, architecture, logic) to implementation (scripts, queries, insertions).
> Setting up the environment, configuring access, and successfully interacting with SQL validated my readiness to handle real-world relational data problems.
> The mental bridge from spreadsheet-based thinking to database logic is clear now.

---

## 📎 Resources Used
- [MySQL Server & Workbench Installation Guide](https://codigosql.top/mysql/instalar-mysql-server-y-mysql-workbench-en-windows-10/)
- [Video: Creating User & Connection – Dr. Carlos Martínez](https://www.youtube.com/watch?v=SB36NEQMzVk)
- TecMilenio official PDFs:
  - `Tema 1.pdf`
  - `Prework 1.pdf`
  - `Sesión 1_actividad guiada.pdf`

---

## ✅ Checkpoints
- [x] MySQL Workbench installed
- [x] Connection created and tested
- [x] ERD opened and inspected
- [x] Tienda database generated
- [x] SQL inserts and SELECT queries completed
- [x] Project `devoluciones` created and explored

---

*Session completed and documented on 2025-05-20*

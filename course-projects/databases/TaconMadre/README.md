# 🌮 TaconMadre – Restaurant Order Management System

**TaconMadre** is a comprehensive, end-to-end relational database project developed to emulate the operations of a real-world taquería (Mexican taco restaurant). 
It was created as the final project for the *Introduction to Databases* module of the **Data Analysis Bootcamp** at Skilling Center TecMilenio. This project demonstrates advanced planning, relational modeling, structured query execution, and realistic data simulation spanning over two decades of business operations.

---

## 📌 Project Overview

| Category                | Detail                                                                 |
|-------------------------|----------------------------------------------------------------------- |
| 🗓️ Timeline            | Development: June 10 – June 19, 2025                                   |
| 🏫 Bootcamp Module     | Introduction to Databases                                              |
| 🛠️ Technology Stack    | MySQL, MySQL Workbench, SQL Scripts, CSV, JSON                         |
| 📦 Key Deliverables    | ERD, `CREATE`, `INSERT`, `SELECT`, Views, Reports, Diagrams            |
| 📚 Educational Purpose | Final graded project with real-time feedback from instructors          |
| 🧠 Author              | Abner Soberón Martínez                                                 |

---

## 🧱 Database Architecture

The TaconMadre schema follows **Third Normal Form (3NF)** design principles and contains a balanced structure optimized for reporting, traceability, and performance.

### 👥 Core Entities

- **Clients** – Customers with demographic and location metadata
- **Users** – System users with authentication and roles
- **Roles** – Role-based permissions for users
- **Suppliers** – Entities providing inventory and ingredients
- **Products** – Tacos, drinks, sides, and ingredients sold
- **Inventory** – Real-time tracking of product availability
- **Sales** – Transaction records from clients
- **Sales Details** – Line-item breakdown of every sale
- **Purchases** – Ingredient acquisition records
- **Purchase Details** – Line-item breakdown of purchases
- **Payment Methods** – Credit, cash, card, etc.

### 🔁 Relationships

- **1:N** between Clients and Sales
- **1:N** between Products and Sales Details / Purchase Details
- **1:N** between Suppliers and Purchases
- **1:N** between Users and Roles
- **1:N** between Sales and Sales Details
- **1:N** between Purchases and Purchase Details

All primary and foreign keys are rigorously implemented and verified. Integrity is enforced using `FOREIGN KEY` constraints, ensuring logical consistency across data.

---

## 🧪 Data Simulation & Time Coverage

- **Time Frame**: Simulated data from **2002 to 2025**, across multiple economic cycles and seasons.
- **Insertions**: Manually crafted and script-generated data using structured `INSERT INTO` statements.
- **Data Sources**:
  - Municipal postal codes (e.g., Monterrey, Guadalupe, San Pedro, San Nicolás)
  - Synthetic names and purchasing behaviors
  - Seasonal item preferences and high-volume weekends
- **Diversity**:
  - Multiple zip codes and client locations
  - Various suppliers and purchase frequency
  - Use of different payment types (cash, card, digital)

This long-term simulation enables robust business reporting and testing under realistic operational scenarios.

---

## 📊 Reporting, Views & SQL Operations

The project includes a wide set of analytical views and advanced SQL operations:

### 🧩 Advanced SQL Features

- ✅ `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`
- ✅ Multi-level `GROUP BY` aggregations
- ✅ Dynamic filters and conditional logic
- ✅ Subqueries and nested `SELECT` statements
- ✅ Use of aliases, `CASE` logic, and wildcards
- ✅ Secure parameterized inserts and filtering

### 📈 Business Reports

- **Daily & Monthly Revenue Reports**
- **Most Profitable Products (seasonal breakdown)**
- **Inventory Depletion Rates**
- **Supplier Activity Reports**
- **Client Purchase Frequency Analysis**

These reports offer strategic insights into business performance, purchasing trends, and supply chain health.

---

## 📋 Testing & Validation

- All `CREATE TABLE` scripts were tested incrementally
- All foreign key constraints were enforced using `INFORMATION_SCHEMA`
- All `SELECT` queries validated against expected results
- Redundant data eliminated via normalization
- Query performance tested using `EXPLAIN`

Tested edge cases:
- Sales with no details
- Returns and re-purchases
- Inactive suppliers
- Payment mismatches

---

## 🧾 Instructor Feedback Highlights

> 🔍 *“A standout project among all final submissions — not only technically sound, but also imaginative in simulating real-world complexity.”*  
> — Bootcamp Instructor Feedback (June 19, 2025)

> 💡 *“Excellent use of foreign keys, views, data simulation, and proper documentation.”*

> 🛠️ *“Outstanding professional quality and clarity — ready to integrate into a full stack.”*

> 📚 *“A great showcase for portfolio or admissions.”*

---

## 📂 Repository Structure

```plaintext
TaconMadre/
├── create_schema.sql            # Tables, indexes, and constraints
├── insert_data.sql              # Simulated inserts: sales, clients, inventory
├── views_reports.sql            # Business logic: views and analytics
├── erd_diagram.png              # Complete visual representation of the schema
├── ventas.csv                   # CSV used for simulating daily sales
├── productos.json               # Catalog of taco items, drinks, and extras
└── README.md                    # ← You are here
```

---

## 🔒 Licensing & Use

This project is part of an academic program and shared for educational and personal learning purposes only. Attribution is appreciated.

```
© 2025 Abner Soberón Martínez  
Email: absomz@hotmail.com
```

---

## 🎯 Author's Vision

This project is a building block in a much larger academic and career plan, aimed at achieving professional excellence in **Data Science**, **Machine Learning**, and **AI Engineering**. It reflects the discipline, clarity, and long-term thinking that define Abner’s pursuit of admission to top-tier institutions like **MIT** and **Harvard**.

---

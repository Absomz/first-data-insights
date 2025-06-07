# 🧠 Technical-Personal Journal

**Course:** Introduction to Databases  
**Institution:** Skilling Center TecMilenio  
**Start Date:** 2025-04-29  
**Documented Session:** 2025-05-29  
**Week:** 6  
**Class:** 4 of 10 (Databases Module)  
**Topic:** Local Database Configuration, CSV Import, and ER Diagrams  

---

## ✳️ Class Summary

The fourth class of the Introduction to Databases module was focused on a comprehensive, step-by-step development of a real-world scenario: configuring a local database, importing data from normalized CSV files, and visualizing the schema through an ER diagram. The practical approach allowed us to understand the entire life cycle of data modeling, normalization, data importation, and execution within MySQL Workbench.

We began the session by analyzing an Excel file titled `Empresa.xlsx`, which included denormalized records for employees and their corresponding entries and exits. The instructor walked us through how to normalize this dataset into three logical tables: `empleado`, `entrada`, and `salida`, then export each as individual CSV files: `empleados.csv`, `entradas.csv`, and `salidas.csv`.

Using MySQL Workbench, we created a schema named `empresa` and defined the three relational tables using SQL. Special attention was placed on properly assigning data types (`VARCHAR`, `INT`, `DATETIME`), setting primary keys, and defining foreign key relationships to maintain referential integrity.

Afterward, we used the Table Data Import Wizard to import each of the three CSV files into their corresponding tables. The order of importation was critical: we began with the independent table `empleado`, followed by `entrada` and `salida`, as both of these depended on the existence of `empleado` through foreign keys. We had to ensure that all `DATETIME` formats matched MySQL’s expectations (e.g., `YYYY-MM-DD HH:MM:SS`), or the import would fail.

Once the textual SQL-based construction was complete and functioning, we moved into the visual environment. MySQL Workbench's ER diagram tool was used to recreate the structure graphically. This included:

* Manually adding entities with their attributes.
* Assigning the correct data types.
* Creating relationships between the tables with appropriate cardinality.
* Verifying that foreign key constraints matched those defined in SQL.

The resulting diagram was exported to an `.mwb` file titled `ModeloTiendaActualziado.mwb`, and the model was forward-engineered into the same schema to confirm that both approaches led to the same structure and functionality.

We concluded the session by reviewing how to export schemas, reviewing table relationships, and practicing additional insert and select queries using the data we imported.

---

## 🔶 Core Concepts Covered

### 🔹 MySQL Local Configuration

* Setting up schemas via `CREATE DATABASE`
* Differentiating between SQL text execution and graphical modeling

### 🔹 Database Normalization Process

* Identifying functional dependencies
* Applying 1NF (Atomic values), 2NF (No partial dependencies), and 3NF (No transitive dependencies)
* Splitting `Empresa.xlsx` into:

  * `empleado` (employee details)
  * `entrada` (log of entry times)
  * `salida` (log of exit times)

### 🔹 CSV Formatting and Import Strategy

* Column naming conventions and structure alignment
* Timestamp format correction for `DATETIME` columns
* Importing sequence for foreign key validation

### 🔹 SQL Table Definitions

```sql
CREATE DATABASE empresa;
USE empresa;

CREATE TABLE empleado (
  id_empleado INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  departamento VARCHAR(50) NOT NULL,
  salario INT NOT NULL,
  PRIMARY KEY (id_empleado)
);

CREATE TABLE entrada (
  id_entrada INT NOT NULL AUTO_INCREMENT,
  empleado_id_empleado INT NOT NULL,
  fecha_hora DATETIME NOT NULL,
  PRIMARY KEY (id_entrada),
  CONSTRAINT fk_entrada_empleado FOREIGN KEY (empleado_id_empleado)
    REFERENCES empleado(id_empleado)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE salida (
  id_salida INT NOT NULL AUTO_INCREMENT,
  empleado_id_empleado INT NOT NULL,
  fecha_hora DATETIME NOT NULL,
  PRIMARY KEY (id_salida),
  CONSTRAINT fk_salida_empleado FOREIGN KEY (empleado_id_empleado)
    REFERENCES empleado(id_empleado)
    ON DELETE CASCADE ON UPDATE CASCADE
);
```

### 🔹 ER Diagram Construction

* Using MySQL Workbench modeling tool to replicate logical schema visually
* Dragging relationships between tables
* Defining relationship lines with one-to-many cardinality symbols
* Assigning `PK` and `FK` in visual form to mirror SQL schema
* Forward engineering the diagram into actual schema

### 🔹 Query Validation

```sql
-- Example query to list employees
SELECT * FROM empleado;

-- Entry logs
SELECT * FROM entrada;

-- Exit logs
SELECT * FROM salida;

-- Join to see employee name and entry time
SELECT e.nombre, en.fecha_hora
FROM empleado e
JOIN entrada en ON e.id_empleado = en.empleado_id_empleado;
```

---

## 🧪 Tools and Exercises

* **Software:** MySQL Workbench
* **Data Files Used:**

  * `Empresa.xlsx`
  * `empleados.csv`
  * `entradas.csv`
  * `salidas.csv`
  * `ModeloTiendaActualziado.mwb`
* **Techniques Applied:**

  * SQL schema creation
  * CSV import via Import Wizard
  * Graphical schema modeling
  * Forward engineering
  * Query testing and validation

---

## 🧭 Reflections and Takeaways

This class revealed how real-life data problems translate into technical design workflows. Working with raw Excel sheets emphasized the importance of well-structured, normalized datasets. Importing from CSV forced us to think critically about **data cleanliness, sequence dependencies**, and **foreign key enforcement**.

The visual ER diagram modeling component made the abstract more tangible. It reinforced the structure we defined by code and made it easier to communicate relationships visually. Forward engineering gave us confidence that modeling is not only illustrative, but also executable.

Overall, this class elevated our understanding from writing tables and queries to **thinking like database architects**.

---

## ✅ Achievements Checklist

* [x] Normalized Excel data into structured CSV files
* [x] Created schema and tables manually via SQL
* [x] Imported CSVs with foreign key dependencies
* [x] Modeled schema graphically using ER tools
* [x] Forward engineered visual model into live database
* [x] Queried data to confirm structure and content integrity

---

## 📎 Attached Files and References

* 📄 `Prework 4.pdf`
* 📄 `Tema 4.pdf`
* 📄 `Sesión 4_ actividad guiada.pdf`
* 📁 `empleados.csv`, `entradas.csv`, `salidas.csv`
* 📁 `Empresa.xlsx`
* 📁 `ModeloTiendaActualziado.mwb`
* 🌐 [MySQL Documentation – Data Import](https://dev.mysql.com/doc/)

---

**Status:** Fully documented with expanded narrative, in-depth breakdowns, applied schema logic, and complete alignment with the professional journal standard.

🧠 Technical-Personal Journal

**Course:** Data Analysis Bootcamp  
**Institution:** Skilling Center TecMilenio  
**Start Date:** 2025-04-29  
**Documented Session:** 2025-06-17  
**Week:** 10  
**Class:** 9 of 10 (Databases Module)  
**Topic:** Final Project – End-to-End MySQL Database Design for TaconMadre  

---

## 🎯 Focus of the Day

Today’s goal was to design, implement, and validate a complete, production-ready MySQL database schema for **TaconMadre**, a multi-channel restaurant order management system. We aimed to:

* Define and model all key entities, attributes, relationships, and constraints.
* Enforce normalization best practices to achieve 3NF across modules.
* Populate tables with representative sample data via `consultas.sql`.
* Develop advanced SQL queries for business intelligence and reporting.
* Document schema and queries thoroughly for future maintainability.

This culminates our module by applying theoretical concepts in a real-world scenario.

## 🗂️ Database Structure & Relationships

The TaconMadre schema is meticulously designed to reflect the restaurant’s multi-channel operations and to ensure data integrity, performance, and maintainability. Below is a domain-driven breakdown highlighting key tables, their core columns, primary/foreign keys, and cardinalities, along with visual relationship notes:

1. **User & Location Domain**

   * **`locations`**

     * PK: `location_id`
     * Columns: `country`, `state`, `city`, `zip_code`
     * Relationship: 1:1 ↔ `users` (each user linked to one address)
   * **`users`**

     * PK: `user_id`
     * FKs: `location_id` (→ `locations.location_id`)
     * Columns: `first_name`, `last_name`, `email (UNIQUE)`, `phone`, `gender`, `created_at`, `role (ENUM: 'customer','admin')`
     * Relationship: 1\:M ↔ `shopping_carts`, 1\:M ↔ `orders`

2. **Employee & Position Domain**

   * **`positions`**

     * PK: `position_id`
     * Columns: `name`, `description`
   * **`employees`**

     * PK: `employee_id`
     * FKs: `position_id` (→ `positions.position_id`)
     * Columns: `user_id` (FK→`users`), `hire_date`, `is_active`
     * Relationship: 1\:M ↔ `activity_log`, 1\:M ↔ `sales`, 1\:M ↔ `purchases`

3. **Product Catalog & Inventory Domain**

   * **`categories`** & **`brands`**

     * PKs: `category_id`, `brand_id`
     * Columns: `name`, `description`
   * **`products`**

     * PK: `product_id`
     * FKs: `brand_id`, `category_id`
     * Columns: `name`, `description`, `price`, `stock`, `image_url`, `is_active`, `created_at`
     * Relationship: 1\:M ↔ `product_stock`, 1\:M ↔ `inventory_movements`, 1\:M ↔ `restock_requests`
   * **`warehouses`**

     * PK: `warehouse_id`
     * Columns: `name`, `address`
   * **`product_stock`**

     * PK: composite (`product_id`,`warehouse_id`)
     * Columns: `quantity`
     * Relationship: M\:N between `products` and `warehouses` via this junction
   * **`inventory_movements`**

     * PK: `inventory_movement_id`
     * FKs: `product_id`, `movement_type (ENUM: 'IN','OUT')`
     * Columns: `quantity`, `movement_reason`, `movement_date`

4. **Sales & Order Domain**

   * **`shopping_carts`** & **`cart_items`**

     * PKs: `cart_id`, `cart_item_id`
     * FKs: `user_id`, `product_id`
   * **`orders`**

     * PK: `order_id`
     * FKs: `user_id`, `payment_method_id`, `shipping_address_id (FK→locations)`
     * Columns: `order_date`, `total_amount`, `status (ENUM)`
     * Relationship: 1\:M ↔ `order_items`, 1\:M ↔ `sales`
   * **`order_items`**

     * PK: `order_item_id`
     * FKs: `order_id`, `product_id`
     * Columns: `quantity`, `unit_price`
   * **`sales`** & **`sale_items`**

     * Mirrors `orders` structure for finalized transactions; tracks `employee_id`, `location_id`, `sale_date`, `channel (ENUM)`.

5. **Financial Domain**

   * **`payment_methods`**

     * PK: `payment_method_id`
     * Columns: `name`, `description`
   * **`payments_received`**

     * PK: `payments_received_id`
     * FKs: `sale_id`, `payment_method_id`, `received_by (employee_id)`
     * Columns: `amount`, `received_at`

6. **Procurement & Activity Domain**

   * **`suppliers`**, **`purchases`**, **`purchase_items`**

     * Capture raw material orders; similar M\:N patterns with unit cost details
   * **`restock_requests`**

     * Tracks low-stock alerts and staff approvals
   * **`activity_log`**

     * Audits user and employee actions across tables; stores `action`, `target_table`, `target_id`, `timestamp`, `notes`

> **Visual Relationship Cues:**
>
> * Solid lines denote primary FK relationships.
> * Crow’s feet (1\:M arrows) clearly mark “one” vs. “many.”
> * Junction tables are highlighted in gray boxes in the ER diagram, emphasizing critical many-to-many mappings.

---

## 📚 Activities and Learning

1. **Requirements Gathering & Entity Identification:**

   * Reviewed project specification: restaurant supports in-store, website, Mercado Libre, Uber Eats, Didi Food, WhatsApp channels; tracks users, employees, suppliers, and locations fileciteturn5file0.
     ... (rest of doc remains unchanged)

2. **Requirements Gathering & Entity Identification:**

   * Reviewed project specification: restaurant supports in-store, website, Mercado Libre, Uber Eats, Didi Food, WhatsApp channels; tracks users, employees, suppliers, and locations fileciteturn5file0.
   * Identified core entities: `locations`, `users`, `employees`, `positions`, `categories`, `brands`, `products`, `inventory_movements`, `product_stock`, `shopping_carts`, `cart_items`, `payment_methods`, `orders`, `order_items`, `sales`, `sale_items`, `payments_received`, `purchases`, `purchase_items`, `restock_requests`, and `activity_log`.

3. **Schema Design & Normalization:**

   * Drafted ER diagram in MySQL Workbench, ensuring each table has a surrogate primary key, appropriate foreign keys, and `ENUM` constraints for statuses and channels.
   * Applied 1NF–3NF rules: separated repeating groups (moved product reviews to `product_reviews`), abstracted address to `locations`, and decoupled stock across warehouses in `product_stock` fileciteturn4file2.

4. **DDL Implementation:**

   * Executed forward-engineered script (`taconMadre_project_1.sql`) to create schema skeleton; iterated to add missing indexes on join columns (`fk_*_idx`) and `UNIQUE` constraints on user roles and brand names fileciteturn4file2.
   * Finalized production-ready DDL in `taconMadre_project_FINAL.sql`, embedding header comments, author attribution, and engine settings for InnoDB performance fileciteturn4file3.

5. **Sample Data Generation & Validation:**

   * Populated `locations` and `orders` via provided `consultas.sql`; added complementary INSERTs for test coverage on `products`, `users`, `employees`, and `suppliers` fileciteturn4file1.
   * Verified referential integrity: ran `SELECT COUNT(*)` on each foreign-key table to confirm no orphaned rows.

6. **Advanced Query Development:**

   * Implemented business reports:

     * Total sales per month (last 12 months)
     * Top-5 products by quantity and revenue
     * Revenue by sales channel and monthly trend
     * Pending orders older than 48 hours
   * Each query tested for performance with `EXPLAIN` plans; iteratively added composite indexes on `(sale_date)`, `(status, order_date)`, and `(product_id)` to speed group aggregations.

7. **Documentation & Comments:**

   * Annotated each table creation with descriptive comments, clarifying purpose and key constraints.
   * Preceded each query batch with business context and output expectations in `consultas.sql` to guide future analysts.

## 🧠 Insights and Reflections

* **Design Consistency:** A consistent naming convention (`snake_case` with `_id` suffix) greatly simplifies join logic and readability.
* **Normalization vs. Performance:** While full normalization aids integrity, denormalization (e.g., caching `total_amount` in header tables) can be considered later for heavy-reporting scenarios.
* **SQL as Documentation:** Well-commented SQL scripts act as living documentation, bridging gaps between DBAs, developers, and analysts.

## 🛠️ Challenges and Frustrations

* **ENUM Evolution:** Adding or modifying `ENUM` values in production requires careful migration scripts; noted need for version-controlled change logs.
* **Cascade Rules:** Balancing `ON DELETE NO ACTION` vs. `CASCADE` required deliberation to prevent unintended data loss.
* **Data Volume Testing:** Limited sample data constrained query performance testing; plan to generate realistic mock datasets next.

## 📌 Adjustments for Tomorrow

* **Mock Data Generation:** Use tools like `Faker` and `Load Data Infile` to insert thousands of records for stress testing.
* **Backup & Recovery Plan:** Draft mysqldump strategies and `binary log` configuration for point-in-time recovery.
* **Access Control:** Define MySQL user roles (`app_read`, `app_write`, `analytics`) with least-privilege grants.

## 💬 Motivation and Intention

Building this end-to-end schema consolidates my mastery of database design, SQL, and best practices. It equips me to architect robust backends for future AI-driven applications and support data analytics at scale.

## 🔁 Weekly Integration

Today’s project unifies:

* **Classes 1–4:** CRUD, schema design, indexing fundamentals.
* **Classes 5–6:** Aggregations, lookups, and indexing strategies.
* **Classes 7–8:** Advanced aggregations, views, and DBaaS deployment.
* **Class 9:** Production-ready schema design, data ingestion, and reporting.

## 📅 Journal Archives

* [Class 8: DBaaS & External Data Import](2025-06-12_Data_Analysis_Bootcamp_Class12.md)
* [Class 7: Aggregations & Views](2025-06-10_Data_Analysis_Bootcamp_Class11.md)

---

*Comprehensive documentation of the TaconMadre project, reflecting schema design, data import, and query development.*

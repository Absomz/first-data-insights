# 🧠 Technical-Personal Journal

**Course:** Introduction to Databases  
**Institution:** Skilling Center TecMilenio  
**Start Date:** 2025-04-29  
**Documented Session:** 2025-06-05  
**Week:** 7  
**Class:** 6 of 10 (Databases Module)  
**Topic:** Advanced Filtering and JSON Operations in MongoDB  

---

## ✳️ Class Summary

This sixth session of the *Introduction to Databases* module focused on advanced filtering, logical conditions, and aggregation strategies within MongoDB. The class extended our knowledge of NoSQL querying techniques, incorporating multiple operators and regular expressions. All exercises were implemented using **MongoDB Compass**, **mongosh**, and sample data from structured JSON and CSV files.

We continued working on the `Tienda` database and performed complex data queries over collections like `Productos` and `Ventas`. We learned to apply **\$regex**, **comparison operators** (`$gt`, `$lt`, `$gte`, `$lte`, `$eq`, `$ne`), and **logical operators** (`$and`, `$or`, `$not`, `$nor`). Emphasis was placed on crafting accurate filters to locate documents under compound and dynamic conditions.

The dataset was composed of:

* A JSON file (`Productos.json`) containing product details
* A CSV file (`ventas.csv`) with sales transaction records

We also explored document validation, nested queries, and string pattern matching in structured fields like product names, categories, and provider attributes.

---

## 🔶 Core Concepts Covered

### 🔹 Logical and Comparison Operators in MongoDB

| Operator | Purpose                        |
| -------- | ------------------------------ |
| `$eq`    | Equals                         |
| `$ne`    | Not equal                      |
| `$gt`    | Greater than                   |
| `$gte`   | Greater than or equal          |
| `$lt`    | Less than                      |
| `$lte`   | Less than or equal             |
| `$and`   | Matches all conditions         |
| `$or`    | Matches at least one condition |
| `$not`   | Negates a condition            |
| `$nor`   | Opposite of `$or`              |

We applied these operators over fields such as `precio`, `categorias`, and embedded document values.

### 🔹 Using \$regex for Pattern Matching

The `$regex` operator enables filtering documents that match a specific string pattern. This is useful when dealing with unstructured text or partial matches.

**Example:**

```js
// Products that start with 'P'
db.Productos.find({ nombre: { $regex: /^P/, $options: 'i' } })
```

**Additional Examples from Class Activity:**

```js
// Descriptions containing 'camisa'
db.Productos.find({ descripcion: { $regex: /camisa/i } })

// Supplier names containing 'mexican'
db.Productos.find({ "proveedor.nombre": { $regex: /mexican/i } })

// Categories starting with 'elec'
db.Productos.find({ "categorias": { $regex: /^elec/i } })

// Product names ending in 'deluxe'
db.Productos.find({ nombre: { $regex: /\sdeluxe$/i } })

// Supplier address starting with 'avenida'
db.Productos.find({ "proveedor.direccion": { $regex: /^avenida/i } })

// Descriptions with 'importado' or 'premium'
db.Productos.find({ "descripcion": { $regex: /importado|premium/i } })

// Combine $regex and $and

// Description contains 'camisa' and price is less than 200
db.Productos.find({
  $and: [
    { descripcion: { $regex: /camisa/i } },
    { precio: { $lt: 200 } }
  ]
})
```

### 🔹 Combining Conditions with \$and and \$or

**Simple AND condition:**

```js
db.Productos.find({
  $and: [
    { precio: { $gte: 100 } },
    { cantidad: { $lt: 500 } }
  ]
})
```

**OR condition for multiple categories:**

```js
db.Productos.find({
  $or: [
    { "categorias": "Electrónica" },
    { "categorias": "Deportes" }
  ]
})
```

**Nested \$and and \$or logic:**

```js
db.Productos.find({
  $and: [
    { precio: { $gt: 50 } },
    { $or: [
      { cantidad: { $lt: 300 } },
      { "categorias": "Hogar" }
    ]}
  ]
})
```

**Complex filter from guided activity:**

```js
db.Productos.find({
  $and: [
    { "proveedor.nombre": { $regex: /^pro/i } },
    { precio: { $lt: 250 } },
    { "categorias": { $in: ["Electrodomésticos"] } }
  ]
})
```

### 🔹 Additional Class Exercises from Guided PDF

```js
// Products where price is not equal to 99.99
db.Productos.find({ precio: { $ne: 99.99 } })

// Products that do NOT belong to category 'Ropa'
db.Productos.find({ "categorias": { $ne: "Ropa" } })

// Using $nor to exclude two categories
db.Productos.find({
  $nor: [
    { "categorias": "Hogar" },
    { "categorias": "Electrónica" }
  ]
})

// Products with price between 100 and 300
db.Productos.find({
  precio: { $gte: 100, $lte: 300 }
})

// Products with available quantity greater than or equal to 200 AND supplier from 'Avenida Central'
db.Productos.find({
  $and: [
    { cantidad: { $gte: 200 } },
    { "proveedor.direccion": { $regex: /avenida central/i } }
  ]
})
```

---

## 🧪 Tools and Exercises

* **Platform:** MongoDB Compass and mongosh (shell)
* **Collections Used:** `Productos`, `Ventas`
* **Data Sources:**

  * `Productos.json` (imported into Compass)
  * `ventas.csv` (converted to JSON for import)
* **Techniques Practiced:**

  * Pattern matching with `$regex`
  * Filtering with comparison and logical operators
  * Multi-condition and nested filters
  * Working with embedded documents (e.g., `proveedor.nombre`)
  * Query planning and verification in Compass

---

## 🧭 Reflections and Takeaways

This session deepened our fluency with MongoDB's powerful filtering mechanics. By combining pattern recognition with logical operators, we unlocked more expressive ways to extract meaningful subsets of documents. We realized the value of `$regex` when working with unstructured or partially known strings, and how to safeguard queries with structured filters.

The class also clarified the contrast between imperative SQL-style logic and MongoDB's declarative document matching. While the syntax is different, the logic remains rooted in Boolean algebra and data traversal.

Hands-on testing with Compass and command-line shell ensured that our understanding of theory was reinforced through experimentation.

---

## ✅ Achievements Checklist

* [x] Imported `Productos.json` and `ventas.csv` into collections
* [x] Applied `$regex` to match partial and complex strings
* [x] Used `$and`, `$or`, `$not`, and `$nor` for multi-layer filtering
* [x] Queried embedded fields like `proveedor.nombre`
* [x] Practiced nested filtering logic
* [x] Extended \$regex queries based on guided activity
* [x] Executed all guided PDF exercises
* [x] Validated query logic using Compass visual interface

---

## 📎 Attached Files and References

* 📄 `Prework 6.pdf`
* 📄 `Tema 6.pdf`
* 📄 `Sesión 6_ actividad guiada.pdf`
* 📁 `Productos.json`
* 📁 `ventas.csv`
* 📁 `Recursos_Actividad_6_Introducción_a_Bases_de_Datos.zip`

---

**Status:** Class fully documented with all filtering scenarios, syntax applications, conceptual analysis, guided examples, and technical depth aligned to journal standards.


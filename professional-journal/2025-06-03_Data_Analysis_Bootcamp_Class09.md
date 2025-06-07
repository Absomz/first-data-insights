# 🧠 Technical-Personal Journal

**Course:** Introduction to Databases
**Institution:** Skilling Center TecMilenio
**Start Date:** 2025-04-29
**Documented Session:** 2025-06-03
**Week:** 7
**Class:** 5 of 10 (Databases Module)
**Topic:** Fundamentals of MongoDB, JSON Importation and CRUD Operations

---

## ✫️ Class Summary

In this fifth session of the *Introduction to Databases* module, we were introduced to **MongoDB**, a powerful NoSQL database system. We explored its foundational concepts, compared it with relational databases like MySQL, and worked hands-on with importing JSON documents, creating and manipulating collections, and performing CRUD operations using **MongoDB Compass** and the Mongo shell.

We began by discussing the fundamental structure of MongoDB, which is based on flexible JSON-like documents. MongoDB collections contain documents with dynamic schemas, enabling storage of complex hierarchical data.

### Main activities performed:

* **Installation and Setup of MongoDB** on Windows or Mac systems
* Understanding the structure of **JSON documents**
* Manual creation of a JSON file `productos.json` with a defined schema including fields such as `nombre`, `descripcion`, `precio`, `cantidad`, `categorias`, and a nested `proveedor` object.
* Importing the JSON file into a MongoDB collection using MongoDB Compass
* Performing basic **CRUD** operations:

  * Insert documents via UI and shell
  * Update and delete entries
  * Querying the database using MongoDB commands
* Advanced exercises: creating and managing a new collection called `Clientes`, and executing additional document operations manually.

The session included practical exercises that solidified the understanding of JSON formatting, document modeling, data typing, collection structure, and MongoDB command syntax.

---

## 🔶 Core Concepts Covered

### 🔍 What is MongoDB?

MongoDB is a **NoSQL database** based on documents, rather than rows and columns. Key highlights:

* **Stores data in BSON (Binary JSON)**
* **Dynamic schema**: No need for predefined table structures
* **Great scalability and high availability**
* Ideal for **non-relational and semi-structured data**

### 🔄 MongoDB vs MySQL

| Feature        | MongoDB                      | MySQL                              |
| -------------- | ---------------------------- | ---------------------------------- |
| Model          | Document-based (JSON/BSON)   | Relational (tables, rows, columns) |
| Schema         | Flexible                     | Fixed                              |
| Query Language | MongoDB Query Language (MQL) | SQL                                |
| Scalability    | Horizontal                   | Vertical                           |
| Ideal For      | Semi/unstructured data       | Structured, transactional data     |

### 📝 JSON Fundamentals

Documents in MongoDB are written in JSON format. Key syntax features:

* Objects are enclosed in `{}`
* Arrays in `[]`
* Key-value pairs separated by commas
* Supports nested documents and arrays

**Example:**

```json
{
  "nombre": "Producto 1",
  "precio": 10.99,
  "categorias": ["Electrónica", "Videojuegos"],
  "proveedor": {
    "nombre": "Proveedor 1",
    "direccion": "Calle Falsa 123",
    "telefono": "1234567890"
  }
}
```

### 📁 Collections and Documents

* A **collection** is a group of related documents (like a table in SQL)
* A **document** is a JSON object containing the data

We created:

* **Database:** `Tienda`
* **Collection:** `Productos`
* Imported: `productos.json`, `act5-productos.json`, `Tienda.Productos.json`

### 🏛️ CRUD Operations in MongoDB

**Create**

```js
db.Productos.insertOne({
  "nombre": "Producto 7",
  "descripcion": "Esta es la descripción del producto 7",
  "precio": 10.99,
  "cantidad": 100,
  "categorias": ["Deportes", "Camping"],
  "proveedor": {
    "nombre": "Proveedor 1",
    "direccion": "Calle Falsa 123",
    "telefono": "1234567890"
  }
})
```

**Read**

```js
db.Productos.find({})
db.Productos.findOne({ "nombre": "Producto 3" })
```

**Update**

```js
db.Productos.updateOne(
  { nombre: "Producto 8" },
  {
    $set: {
      descripcion: "Actualización de precio",
      precio: 22.99,
      cantidad: 150
    }
  }
)
```

**Delete**

```js
db.Productos.deleteOne({ nombre: "Producto 1" })
```

### 👥 Nueva Colección: Clientes

```js
use Tienda
db.createCollection("Clientes")

db.Clientes.insertOne({
  nombre: "Juan Perez",
  email: "juan.perez@example.com",
  edad: 32,
  direccion: {
    calle: "Calle Falsa 123",
    ciudad: "Ciudad Ficticia",
    pais: "Ficticia"
  },
  historial_compras: [
    { fecha: ISODate("2022-02-01"), producto: "Producto 1", precio: 9.99 },
    { fecha: ISODate("2022-02-14"), producto: "Producto 2", precio: 15.99 }
  ]
})
```

---

## 🧪 Tools and Exercises

* **MongoDB Compass** (UI-based DB interaction)
* **MongoDB Shell (mongosh)**
* Imported JSON files:

  * `productos.json`
  * `act5-productos.json`
  * `Tienda.Productos.json`
* Data operations performed manually and via console
* Schema analysis and visual navigation in Compass

---

## 🛍️ Reflections and Takeaways

This class marked a paradigm shift from traditional relational databases to modern NoSQL environments. MongoDB introduced a new way of thinking about data — document-oriented, nested, dynamic, and schema-flexible. We now understand not just **how** to insert data, but also how to design documents effectively to mirror real-world complexities.

Mastering JSON structure and its nuances provided the clarity needed to leverage MongoDB’s true power. Additionally, Compass allowed a smooth introduction for visual learners before diving deeper into shell commands and more advanced MQL syntax.

This hands-on session has laid the groundwork for more complex operations like aggregations and indexing in future classes.

---

## ✅ Achievements Checklist

* [x] Created and edited documents in MongoDB
* [x] Performed full CRUD operations
* [x] Imported structured JSON documents into Compass
* [x] Used the Mongo shell for advanced operations
* [x] Built a new collection and inserted user-defined documents
* [x] Compared MongoDB vs MySQL

---

## 📂 Attached Files and References

* `Prework 5.pdf`
* `Tema 5.pdf`
* `Sesión 5_ actividad guiada.pdf`
* `productos.json`
* `act5-productos.json`
* `Tienda.Productos.json`

---

**Status:** Class fully documented with detailed descriptions, live queries, modeling rationale, and reflective insights.

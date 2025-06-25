🧠 Technical-Personal Journal

**Course:** Data Analysis Bootcamp  
**Institution:** Skilling Center TecMilenio  
**Start Date:** 2025-04-29  
**Documented Session:** 2025-06-12  
**Week:** 9  
**Class:** 8 of 10 (Databases Module)  
**Topic:** DBaaS Fundamentals, MongoDB Atlas Setup & External Data Import  

---

## 🎯 Focus of the Day

In this session, we transitioned from local development to cloud-managed databases (DBaaS) with MongoDB Atlas, learning to:

* Provision and configure a free-tier Atlas cluster, including projects, organizations, users, and IP whitelisting.
* Connect MongoDB Compass to a remote Atlas cluster and load the sample datasets.
* Explore and manipulate sample data with regex, logical operators, and aggregation stages in Compass.
* Import external CSV datasets from a GitHub repository into a local MongoDB instance and practice querying those collections.

These steps illustrate how DBaaS simplifies infrastructure management, enabling focus on data analysis.

## 📚 Activities and Learning

1. **Prework Videos Review:**

   * Watched “Crear una cuenta y usuarios en la Nube con MongoDB Atlas” to understand organization, project, and user setup in Atlas fileciteturn3file0.
   * Completed “Cómo crear una base de datos simple en MongoDB Compass en menos de 20 minutos” to review loading data into Atlas and connecting Compass fileciteturn3file0.

2. **Atlas Cluster Provisioning (Part 1):**

   * **Organization & Project Creation:**

     1. Logged into [https://cloud.mongodb.com](https://cloud.mongodb.com) and created a new organization “TecDBWorkshop”.
     2. Under the organization, created a project named “DataAnalysisBootcamp”.
   * **Free Tier Cluster Setup:**

     ```text
     Provider: AWS (Free Tier)
     Region: US East (N. Virginia)
     Cluster Tier: M0 Sandbox
     ```

     * Waited \~3 minutes for deployment; monitored cluster status on the Atlas dashboard.
   * **Database User & IP Whitelisting:**

     * Created a database user `bootcamp_user` with `readWriteAnyDatabase` role and a secure password.
     * Added current IP to Network Access (Whitelist) to allow remote connections. fileciteturn3file1

3. **Compass Connection & Sample Data (Part 2):**

   * Selected “Load Sample Dataset” from the Clusters view to generate the `sample_*` collections (\~350 MB).
   * Clicked **Connect** → **Connect with MongoDB Compass**, pasted the provided connection URI into Compass, and authenticated with `bootcamp_user`.
   * Validated presence of sample databases: `sample_airbnb`, `sample_supplies`, `sample_training`, etc.

4. **Data Exploration & Querying:**

   * **Regex Filtering:** Queried `sample_supplies` for items whose `name` matches `/.*Report.*/i`.
   * **Logical Operators:** Filtered `sample_airbnb.listingsAndReviews` where `beds >= 3` and `price < 200` using:

     ```json
     { beds: { $gte: 3 }, price: { $lt: 200 } }
     ```
   * **Aggregation Practice:** On `sample_training.students`, aggregated average `yearsExperience` per `profession`:

     ```js
     db.students.aggregate([
       { $group: { _id: "$profession", avgExp: { $avg: "$yearsExperience" } } },
       { $sort: { avgExp: -1 } }
     ]);
     ```

     Confirmed expected results and explored `$match` + `$count` combinations.

5. **External Data Import (Part 3):**

   * **Dataset Selection:** Accessed [https://github.com/reisanar/datasets](https://github.com/reisanar/datasets) and selected `Auto.csv`.
   * **Local CSV Extraction:** Opened `Auto.csv` via Raw view (`CTRL+A`, `CTRL+C`) and saved locally as `Auto.csv` with UTF-8 encoding.
   * **Local MongoDB Instance Setup:**

     1. Started local `mongod` on default port.
     2. Opened Compass with a **New Connection** to `mongodb://localhost:27017` without authentication.
   * **DB & Collection Creation:**

     ```text
     Database: recursos
     Collection: autos
     ```
   * **CSV Import Workflow:**

     * In Compass, selected **Import Data** → **CSV**, chose `Auto.csv`.
     * Mapped each column to appropriate BSON types (`String`, `Number`, `Date`) and clicked **Import**.
     * Verified import count (e.g., 392 documents).
   * **Additional Datasets:** Repeated import for three more CSVs from the repository: `Cars.csv`, `Customers.csv`, `Sales.csv`, creating separate collections under `recursos`.

6. **Post-Import Querying & Aggregations:**

   * **Regular Expression Search:** Found automobiles with model names ending in “GT”:

     ```json
     { model: { $regex: /GT$/ } }
     ```
   * **Range & Logical Filters:** Queried `recursos.autos` for vehicles priced between \$15,000 and \$25,000 and produced after 2010:

     ```json
     { price: { $gte: 15000, $lte: 25000 }, year: { $gt: 2010 } }
     ```
   * **Simple Aggregation:** Counted number of vehicles by manufacturer:

     ```js
     db.autos.aggregate([
       { $group: { _id: "$manufacturer", count: { $sum: 1 } } },
       { $sort: { count: -1 } }
     ]);
     ```

## 🧠 Insights and Reflections

* **DBaaS Accelerates Setup:** MongoDB Atlas freed me from local server maintenance and let me focus on queries and schema exploration.
* **Compass as a Bridge:** Using Compass for both remote and local connections unified the workflow, easing the transition between environments.
* **Data Import Rigor:** Manual type assignment during CSV import reinforced understanding of BSON types and the importance of correct schema mapping.

## 🛠️ Challenges and Frustrations

* **Network Whitelist Delays:** Atlas UI sometimes lagged when applying IP rules; required patience and page refreshes.
* **CSV Encoding Issues:** Subtle BOM/UTF-8 mismatches caused import errors; solved by re-saving files explicitly as UTF-8 without BOM.
* **Large Sample Data in Compass:** Loading 350 MB sample datasets in Compass introduced performance lag; had to increase Compass memory settings to 2 GB.

## 📌 Adjustments for Tomorrow

* **Automated Atlas Provisioning:** Research Terraform scripts or Atlas CLI (`mongocli`) to script cluster creation.
* **Bulk Import Scripting:** Experiment with `mongoimport` CLI for bulk CSV ingestion and validating options like `--headerline`.
* **Index Strategy:** Create indexes on frequently filtered fields in `recursos.autos` (e.g., `price`, `year`) to speed up queries.

## 💬 Motivation and Intention

By mastering DBaaS deployment and external data ingestion, I’m equipping myself to build scalable, production-grade data pipelines. These skills are critical for future analytics and data engineering tasks.

## 🔁 Weekly Integration

This class extends:

* **Class 1–4:** Local CRUD, schema design, basic aggregations, and index basics.
* **Class 5–7:** Advanced aggregations, lookups, and view creation.
* **Class 8:** Transition to cloud DB, data import, and cross-environment querying.

## 📅 Journal Archives

* [Class 7: Aggregation Pipelines and Read-Only Views](2025-06-10_Data_Analysis_Bootcamp_Class11.md)
* [Class 6: Lookup, Map-Reduce, and Indexing](2025-06-03_Data_Analysis_Bootcamp_Class10.md)

---

*Comprehensive documentation capturing cloud database setup and data ingestion processes.*

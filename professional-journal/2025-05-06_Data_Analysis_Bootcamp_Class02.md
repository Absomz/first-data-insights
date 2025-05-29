# 🧠 Technical-Personal Journal  
Course: Probability and Statistics for Data Analysis  
Institution: Skilling Center TecMilenio  
Start Date: 2025-04-28  
Documented Session: 2025-05-06  
Week: 2  
Topic: Statistical Foundations  
**Class:** 2 of 4 (Induction Module) 

---

## 🧠 Prior Knowledge

* Understands the difference between probability and statistics (deductive vs inductive reasoning)
* Able to connect statistical concepts to real-world applications
* Experienced in identifying methodological flaws from a data science perspective

---

## 📚 Session Resources

* `Ejemplos - Bases estadísticas.pdf`
* `Sesión2.xlsx` (interactive dataset & exercises)
* `Tema2.Basesestadísticas.zip` (complementary materials)

---

## 📘 Core Concepts Covered

### ✅ 1. **Sources and Nature of Data**
- Many companies mistakenly assume that all data used for internal decisions was collected internally.
- For example, data from employee surveys might be collected via third-party platforms, introducing external control and interpretation issues.
- This stresses the need for analysts to ask: *Who collected the data?*, *Is it reliable?*, and *Does it align with the business problem?* (Gutman & Goldmeier, 2021).

### ✅ 2. **Types of Data Collection**
- **Observational data**: collected passively without control (e.g. web visits, product sales).
- **Experimental data**: actively collected under controlled settings (e.g. clinical trials, A/B testing).
- Example: studying the impact of vaping in adolescents can't ethically be done through experimentation → forces use of observational data, recognizing limitations.

### ✅ 3. **Sampling and Data Ownership Structures**
- Data may be internal/external and owned/collected by different entities.
- **Stratified sampling** ensures that subgroups are proportionally represented in a dataset. For example, a snack company might stratify customer satisfaction by product type.
- Emphasis on maintaining data quality and ensuring future accessibility (Sakhare et al., 2023).
- Diagram shown in class: 
  ```
  Data Collection:
  ┌──────────────┐
  │ Internal     │
  │   ┌────────┐ │
  │   │ Owned  │ │
  │   └────────┘ │
  │   ┌────────┐ │
  │   │ Collected │
  │   └────────┘ │
  └──────────────┘
  + External Data  (3rd-party vendors, survey platforms, etc.)
  ```

### ✅ 4. **Bias and Representativeness**
- Inferential statistics are required when full data from a population is unavailable.
- Example: To understand teen buying behavior in Mexico, the dataset must be representative of *all* Mexican teens, not just urban youth.
- Example: Estimating a politician's approval using only their own party supporters introduces **sampling bias**.
- Observational data is often **inherently biased** → it should not be discarded but must be used carefully, recognizing its flaws.

### ✅ 5. **Regression with Categorical Variables**
- Model: `Yi = β0 + β1X1 + β2X2 + γZ + εi`
- Z is a dummy variable to capture the effect of a binary category (e.g. Wind Turbine A vs B)
- Dummy variables allow non-numeric categories to be integrated into linear models.

### ✅ 6. **Hands-On Data Cleaning in Python**
- Dataset: `OnlineRetail.csv` (real-world retail transaction data)
- Key steps practiced:
  1. Import necessary libraries: `numpy`, `pandas`, `sklearn`, `matplotlib`, `seaborn`
  2. Load dataset into a DataFrame
  3. Evaluate missing data percentage using:
     ```python
     df_null = round(100 * (retail.isnull().sum()) / len(retail), 2)
     ```
- Finding: `CustomerID` had 24.93% missing values → discussed treatment options: imputation vs exclusion

### ✅ 7. **Frequency Tables and Histograms**
- Discussed construction of:
  - Absolute frequency tables
  - Relative frequency tables
  - Combined frequency-percentage tables
- Example: Analysis of trailer weights across a logistics park in CDMX
  - Total sample: 350 trucks
  - Highest concentration: 48% fall between 15–20 tons
- Histogram showed normal-like distribution centered near 17.5 tons

### ✅ 8. **Normal Distribution Applications**
- Data generated with μ = 4 and σ = 1 for values between 1 and 7
- Normal distribution table reviewed in class
- Interpretation: values closer to μ have higher probability density
- Concepts of **bell curve symmetry** and **standard deviation spread** visualized
- Standard normal distribution: μ = 0, σ = 1 → reference model for z-score analysis

### ✅ 9. **Measures of Central Tendency and Dispersion**
- Real-world case: electronic resistors with expected 220Ω ± 3Ω
- Computed:
  - Sample mean: x̄ = 220.2Ω (based on 14 values)
- Second case: Tortilla prices across 15 districts
  - Sample mean: x̄ = 22.42
  - Variance: s² = 4.14
  - Standard deviation: s = 2.03
- Practice in variance formula: `s² = Σ(xi - x̄)² / (n - 1)`

---

## 🔍 Personal Analysis

> This session brought to life how raw datasets — especially observational ones — must be filtered through a lens of skepticism, documentation, and ethical caution. As an analyst, you're rarely handed a clean, unbiased dataset. Understanding the source and design of data collection is as important as the math you apply to it.
>
> The cleaning process with Python was especially powerful. Seeing null values quantified and distributions visualized reinforced the statistical intuition required for solid data science work. Moreover, the class bridged quantitative models with real-life industry scenarios — particularly relevant to product design and customer analysis roles.

---

## 📈 Knowledge Acquired

* Differentiated between passive and controlled data collection
* Understood and applied the concept of stratified sampling
* Measured and managed bias in datasets
* Used Python to inspect, clean, and prepare data
* Constructed frequency tables and plotted distributions
* Interpreted real histograms and normal distribution curves
* Calculated variance and standard deviation from real-world datasets

---

## 📂 Supporting Files (Private Use Only)

* `Sesión2.xlsx` – dataset with exercises
* `Tema2.Basesestadísticas.zip` – complementary visual and practice material
* `Ejemplos - Bases estadísticas.pdf` – full conceptual reference guide

---

## ✅ Evaluation and Next Steps

* Difficulty: 🟨 Intermediate–Advanced
* Actions:
  - Finish pending tasks in Excel exercise sheet
  - Review how normal distribution links with z-scores and probability
  - Deepen Python practice with `seaborn` histograms and `scipy.stats`
  - Prepare analytical questions for next live session

---

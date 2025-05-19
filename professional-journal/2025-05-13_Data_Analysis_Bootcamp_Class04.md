# 🧠 Technical-Personal Journal  
**Course:** Probability and Statistics for Data Analysis  
**Institution:** Skilling Center TecMilenio  
**Start Date:** 2025-04-28  
**Documented Session:** 2025-05-13  
**Week:** 3  
**Topic:** Final Session – Induction Module Integration  

---

## 📚 Session Overview

This was the **final synchronous class of the induction module** for the Data Analysis Bootcamp. 
The session was designed to consolidate all the foundational concepts in probability and statistics covered over the past three weeks. 
It involved a real-world data exercise using Excel and the Kaggle dataset “*Students Performance in Exams*”.

In addition to technical exercises, the session also included a **wellness activity** focusing on "hope" as a key character strength—reinforcing the mindset required to overcome complex analytical challenges.

---

## 📊 Dataset Used: *Students Performance in Exams* (Kaggle)

| Field | Description |
|-------|-------------|
| gender | Student's gender (female/male) |
| race/ethnicity | Student's group classification |
| parental level of education | Highest education level achieved by parents |
| lunch | Type of lunch (standard/free-reduced) |
| test preparation course | Completed or not completed |
| math score | Score out of 100 |
| reading score | Score out of 100 |
| writing score | Score out of 100 |

📦 **Format:** CSV, imported into Microsoft Excel

---

## 🧩 Steps Followed in the Analytical Exercise

### ✅ 1. **Data Import and Initial Exploration**
- Opened dataset in Excel
- Reviewed general structure and ensured column headers were correctly aligned
- Verified categorical values and score distributions

### ✅ 2. **Sorting and Grouping**
- Sorted students by:
  - ✅ **Gender** (male/female)
  - ✅ **Test preparation course** (completed / none)
- Created two main groups for comparison:
  - Group A: Students who completed the prep course
  - Group B: Students who did not

### ✅ 3. **Statistical Aggregation**
- For each group and gender, calculated:
  - 📌 **Average math score**
  - 📌 **Average reading score**
  - 📌 **Average writing score**
- Used Excel formulas:
  - `=AVERAGEIFS()` for conditional averaging
  - `=FILTER()` to extract relevant subsets (optional advanced method)

### ✅ 4. **Visualization with Excel Charts**
- Created **bar charts** comparing average scores by gender and preparation status
- X-axis: subject (math, reading, writing)
- Y-axis: average scores
- Series: male/female, completed/not completed

### ✅ 5. **Interpretation of Results**
- Clear trend: **students who completed the preparation course consistently scored higher** in all subjects
- Noted that the **performance gap by gender was smaller** within the completed group
- Reading and writing scores showed more gender variation than math

---

## 🎯 Key Concepts Reinforced

| Concept | Application |
|--------|-------------|
| Descriptive statistics | Mean comparison across groups |
| Conditional logic | Used `AVERAGEIFS` to compute grouped averages |
| Visualization | Used bar graphs to clarify differences visually |
| Data segmentation | Split data by gender and course completion |
| Practical interpretation | Used statistical results to inform insight |

---

## 🌱 Wellness Activity – *Hope as a Strength*

### 💬 Objective:
Reflect on how hope fuels the learning journey, especially when facing technical complexity and the uncertainty of large datasets.

### 🧠 Summary:
- Hope is not passive: it is a strategy built from self-awareness, past effort, and vision.
- In the context of data analysis:
  - We use prior knowledge (statistics, coding) to project success.
  - Facing uncertainty is common—hope transforms it into opportunity.

### ✍️ Prompt (answered during session):
> "What would change in your learning journey if you consistently applied hope to your approach to challenge and complexity?"

📌 **Personal takeaway:** Maintaining hope through a structured study plan and measurable milestones transforms fear of failure into productive experimentation. It creates a space for mastery.

---

## 📈 Knowledge Acquired

* Developed the ability to conduct grouped statistical analysis in Excel
* Practiced dataset segmentation for comparative analysis
* Translated numeric results into actionable insights
* Created visual representations of grouped averages
* Reflected on emotional strategies (like hope) that support technical growth

---

## 📂 Supporting File (Private Use Only)

* `Sesión Sincrónica Final-1.pdf`

---

## ✅ Evaluation and Next Steps

* Difficulty Level: 🟩 Moderate
* Review `AVERAGEIFS`, `IF`, and `FILTER` in Excel for advanced conditional analysis
* Begin preparing for core statistical modeling with Python
* Transfer confidence gained in Excel to future Jupyter/NumPy/Pandas work
* Retain hopeful mindset when transitioning to more abstract content in upcoming modules

---

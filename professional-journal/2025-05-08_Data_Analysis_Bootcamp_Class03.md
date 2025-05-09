# 🧠 Technical-Personal Journal  
**Course:** Probability and Statistics for Data Analysis  
**Institution:** Skilling Center TecMilenio  
**Start Date:** 2025-04-28  
**Documented Session:** 2025-05-08  
**Week:** 2
**Topic:** Machine Learning, Probability & Statistics 

---

## 🧠 Prior Knowledge

* Understands basic concepts of supervised learning, decision trees, and data classification.
* Familiar with foundational probability and how it influences predictive modeling.
* Can distinguish regression, classification, and clustering problems at a conceptual level.
* Has introductory experience in Python and basic data manipulation.

---

## 📚 Session Resource

* `Ejemplos - Machine Learning, probabilidad y estadística.pdf`

---

## 📘 Core Concepts Covered (Expanded)

### ✅ 1. **Structured vs Unstructured Data**
- **Structured data** is highly organized and exists within formats such as spreadsheets or relational databases, where columns and data types are clearly defined. Examples include client databases, financial records, or form-based logs.
- **Unstructured data**, by contrast, lacks a fixed format and includes free-form content like social media posts, videos, audio files, emails, and documents. These are the most common in the digital world.
- The class emphasized that unstructured data requires complex preprocessing pipelines (tokenization, tagging, vectorization) to become usable for modeling.
- Understanding this distinction is critical for ML engineers and analysts, as the type of data determines the tools and techniques needed for analysis.

### ✅ 2. **What is Machine Learning (ML)?**
- Defined as a subfield of artificial intelligence that enables systems to learn from data automatically without explicit programming.
- Machine learning uses mathematical models, trained on historical data, to detect patterns and make decisions or predictions.
- In class, the instructor explained how ML applications use a "training dataset" to allow the model to generalize to unseen data through the recognition of features and relationships.

### ✅ 3. **The Role of Probability and Statistics in ML**
- **Probability** helps handle uncertainty. It provides the theoretical backbone for model confidence and classification thresholds.
- **Statistics** aids in understanding the underlying distributions of data, model fit, and residual analysis.
- Examples mentioned include:
  - Using logistic regression to estimate the probability of class membership.
  - Using neural networks to predict probabilistic outcomes across multiple categories.
- These foundations are especially critical in models that deal with real-world ambiguity such as customer churn or medical diagnostics.

### ✅ 4. **Applications of Decision Trees**
- Decision trees are versatile ML tools that allow for visualization of classification or regression tasks.
- In industry, they are used to:
  - Optimize supply chain operations (minimize delivery time or cost)
  - Predict creditworthiness of loan applicants
  - Detect potential fraud based on behavioral patterns
- Trees offer **human-readable** pathways, which makes them popular in regulated industries where explainability is vital.
- In class, it was stressed that building a good decision tree starts with clearly defining decision criteria and splitting rules.

### ✅ 5. **Neural Networks and the M-P Model**
- **The McCulloch–Pitts (M-P) model** is the earliest abstraction of a neuron. It consists of a weighted summation of inputs passed through an activation function (e.g., threshold).
- Today’s neural networks expand this by:
  - Including multiple **hidden layers** that allow deeper pattern extraction.
  - Accepting non-binary input data (real numbers, categorical embeddings).
  - Employing nonlinear activation functions (ReLU, sigmoid, tanh).
- A modern NN architecture includes:
  - **Input layer**: receives features (numerical or categorical).
  - **Hidden layers**: identify patterns and interactions.
  - **Output layer**: generates predictions or classifications.
- Examples from class:
  - A single neuron for binary output (e.g., yes/no loan approval)
  - Multiple neurons for multi-class classification (e.g., dog/cat/bird identifier)

### ✅ 6. **Stochastic Matrices (Introductory Note)**
- A **stochastic matrix** has rows that sum to 1, often used in modeling state transitions (e.g., Markov Chains).
- Introduced conceptually in class using examples like:
  - 0.8 + 0.2 = 1 → 80% chance of outcome A, 20% for B.
- While not explored in depth, the concept prepares students for future models involving transition probabilities and sequence prediction.

### ✅ 7. **Learning Paradigms in Machine Learning**

#### 🔹 Supervised Learning
- Training a model on **labeled data** (i.e., input-output pairs).
- Examples:
  - Predicting house prices using size, location, and number of rooms.
  - Estimating loan risk using income, age, credit score.
- In class, we explored **regression** (predicting a continuous value) and **classification** (assigning categories).

#### 🔹 Unsupervised Learning
- No labeled outcomes; the model finds **clusters or hidden patterns**.
- Common use cases:
  - Customer segmentation
  - Market basket analysis
  - Web behavior grouping
- Discussed how **k-means clustering** groups similar data points, e.g., customers by purchase patterns.

#### 🔹 Reinforcement Learning
- The model learns via **reward and punishment**.
- Example: teaching a robot to navigate without collisions.
- Important in robotics, self-driving cars, game strategy AI.

### ✅ 8. **Big Data and its Real-World Relevance**
- Defined by the **3 Vs**:
  - **Volume**: enormous datasets (TB–PB scale)
  - **Velocity**: real-time or high-speed data inflow
  - **Variety**: structured, semi-structured, unstructured
- Example: analyzing millions of Google searches, YouTube views, financial transactions.
- Python may struggle with large-scale processing unless optimized (parallel processing, distributed computing).
- Tools like Apache Spark, Hadoop were hinted at as solutions for massive datasets.

### ✅ 9. **Big Data Lifecycle (per the PDF Tree Diagram)**
1. **Collection**: data from IoT, apps, clicks, sensors
2. **Labeling**: assigning tags based on source/type
3. **Cleaning**: fix missing fields, duplicates, formatting
4. **Protection**: anonymize or encrypt sensitive data (e.g., patient records)
5. **Modeling**: build predictive or descriptive models
6. **Application**: real-world deployment (fraud detection, traffic optimization, recommendation engines)

### ✅ 10. **Industry Examples and NLP Tools**
- **Education**: Khan Academy uses adaptive algorithms for personalized learning.
- **Finance**: credit scoring, anomaly detection.
- **Retail**: customer clustering for stock decisions.
- **Health**: disease progression modeling.
- **Astronomy**: habitability scoring for exoplanets.
- **NLP**:
  - Examples: ChatGPT, Gemini, DeepSeek, Alexa.
  - Capable of interpreting poorly written prompts, slang, regionalisms, and producing structured outputs.
  - Highlighted the power of large language models with tens of billions of parameters (e.g., LLaMA 70B).

---

## 🔍 Personal Analysis

> This session delivered the most comprehensive exposure to real-world AI applications thus far. It bridged the gap between theory (probability/statistics) and machine intelligence (ML/NLP). 
>
> Particularly engaging was the deep-dive into supervised and unsupervised learning, which clarified how clustering vs prediction problems differ in terms of labeling and purpose. 
>
> The transition from M-P models to modern neural nets was also impactful, making the historical progression of AI more tangible.
>
> The segment on Big Data felt especially practical — the stages of processing mirror what data professionals face in enterprise systems.

---

## 📈 Knowledge Acquired

* Categorized types of data (structured vs unstructured)
* Learned the logic and application of decision trees
* Understood the flow of data through neural networks
* Practiced distinctions between learning types: supervised, unsupervised, reinforcement
* Identified the lifecycle of Big Data and its technical limitations
* Connected theoretical models to sector-based applications (finance, education, health)
* Discovered real-world relevance of NLP tools and model selection based on parameter scale

---

## 📂 Supporting File (Private Use Only)

* `Ejemplos - Machine Learning, probabilidad y estadística.pdf`

---

## ✅ Evaluation and Next Steps

* Difficulty: 🟨 Intermediate to Advanced
* To-do:
  - Practice decision tree modeling and visualization
  - Study neural network activations and weight adjustment
  - Explore LM Studio and LLM architectures
  - Formulate ML problems from real-life scenarios
  - Ask AI tools to explain P vs NP problem and compare definitions

---

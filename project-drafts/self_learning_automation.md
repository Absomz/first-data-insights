# 📁 self_learning_automation.md

## 🧠 Project Vision: Self-Learning Automation with Python

> **Purpose:** Build a system that enhances and automates my high school learning process using Python and data tools, allowing me to document, transform, and retrieve knowledge efficiently. This supports my preparation for MIT-level academic expectations.

---

## 🎯 Objective

Develop a structured, Python-based workflow to:
- Automatically organize and tag learning materials (e.g., screenshots)
- Convert them into reusable study entries
- Practice data processing as I study
- Enable long-term memory through structured documentation and review
- Preserve knowledge from high school lessons without needing constant manual revision

---

## 🧱 Personal Context & Motivation

As a high school student preparing for top-tier institutions like MIT, I face a significant challenge: every day I study multiple subjects, from physics to programming to English, and I often don’t have time to revisit older content.

This constant flow of new material creates the fear of **forgetting what I’ve already learned.** Since I want to make the most of my time, I began to think of a way to document my learning in a smarter, more scalable manner.

My current Data Science course—focused on statistics, probability, and Python—gave me the inspiration to begin building a system that:
- Helps me **preserve everything I learn**
- Uses automation to generate summaries and indexes
- Trains my Python skills while reinforcing academic knowledge

This approach turns every study session into both an academic win **and** a technical one.

---

## 🪜 Stages

### 🔹 Stage 1: Manual Foundation
- Continue taking screenshots of every lesson, exercise, and exam
- Name each file clearly (e.g., `2025-04-28_physics_impulse_Q2.png`)
- Store in subject/topic folders with short `README.md` indexes

### 🔹 Stage 2: Python Practice + Automation
- Use Python to:
  - Read filenames
  - Generate index files (`.md` or `.json`)
  - Extract dates, tags, and subjects
- Begin using pandas to structure data from lessons
- Store reflections, formulas, key takeaways automatically

### 🔹 Stage 3: OCR + Data Enhancement
- Use `pytesseract` to read text from screenshots
- Automatically classify screenshots by topic
- Build CSV or database with entries like:
  ```
  | Date | File | Subject | Topic | Summary |
  ```

### 🔹 Stage 4: Streamlit Dashboard
- Interactive app to:
  - Browse all study material
  - Filter by date, subject, or keyword
  - View notes, screenshots, reflections
  - Schedule future reviews (spaced repetition)

---

## 🛠️ Tools & Libraries
- Python 3.x
- pandas, os, glob
- pytesseract (OCR)
- Markdown
- Streamlit (for GUI)
- GitHub (for storage and versioning)

---

## 🗂️ Daily Workflow (future)

1. Study lesson → take screenshots → save in correct folder
2. Run script → auto-generate `.md` or `.json` index
3. Add quick summary in journal template
4. Push to GitHub → knowledge is stored, indexed, and retrievable

---

## 📌 Long-Term Goal
> Build a complete, automated visual knowledge repository powered by my own Python tools to support my academic journey toward MIT and beyond.

This system will serve as:
- My second brain for high school
- My Python practice lab
- My future academic and professional archive
- My tool to ensure **nothing important is ever forgotten**

---

## 🧠 Motto
**"Don't just study harder — study smarter, with systems."**

---

📄 *Document created by Abner Soberon, April 2025 – for personal and academic excellence, with the vision of becoming a world-class data scientist prepared for MIT.*

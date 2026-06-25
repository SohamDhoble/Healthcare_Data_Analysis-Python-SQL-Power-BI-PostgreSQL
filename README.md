# 🏥 Healthcare Data Analysis
### Uncovering Patterns in Patient Records to Improve Care & Efficiency

![Python](https://img.shields.io/badge/Python-3.10-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-blue)
![PowerBI](https://img.shields.io/badge/PowerBI-Dashboard-yellow)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 📌 Project Overview

This project performs a comprehensive analysis of **1,200+ patient 
records** across 15 medical conditions to identify trends in treatment 
costs, readmission rates, department performance, and patient 
demographics — delivering data-driven insights to support better 
clinical and operational decision-making.

---

## 🎯 Objectives

- Identify medical conditions with highest treatment costs and readmission rates
- Analyze patient demographics (age, gender, BMI) vs treatment outcomes
- Benchmark department-level performance and patient satisfaction
- Detect high-risk patients using multi-metric thresholds
- Visualize insights through an interactive Power BI dashboard

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Python (Pandas, Seaborn, Matplotlib) | Data cleaning, EDA, visualizations |
| PostgreSQL + pgAdmin 4 | Relational database, SQL analysis |
| Power BI | Interactive dashboard |
| Jupyter Notebook | Analysis workflow |
| Excel / CSV | Dataset storage |

---

## 📁 Project Structure

```
Healthcare-Data-Analysis/
│
├── healthcare_cleaned.csv          # Cleaned dataset (1,200 rows, 22 cols)
├── Healthcare_Analysis.sql         # 10+ SQL queries for insights
├── Healthcare_Data_Analysis.ipynb  # Python EDA notebook
├── Healthcare_Analysis_Dashboard.pbix  # Power BI dashboard file
├── Healthcare_Project_Report.docx  # Full project report
└── README.md
```

---

## 🔍 Key SQL Insights

```sql
-- High-risk patients: elevated glucose AND high blood pressure
SELECT Patient_ID, Patient_Name, Medical_Condition,
       Glucose_Level, BP_Systolic
FROM healthcare_cleaned
WHERE Glucose_Level > 200 AND BP_Systolic > 140;
```

**Other queries cover:**
- Top 5 highest avg treatment cost conditions
- Readmission rate % per medical condition
- Department-wise patient volume & satisfaction
- Age group vs average treatment cost
- Average BMI per medical condition

---

## 📊 Key Findings

- 🔴 **Cancer & Heart Disease** have the highest average treatment costs (~$35K+)
- 🔁 **Diabetes** shows the highest readmission rate among all conditions
- 🏥 **General Medicine** handles the highest patient volume
- 👴 **Senior patients (60+)** incur 40% higher treatment costs than young adults
- ⚠️ **18% of patients** flagged as high-risk (glucose > 200 & BP > 140)
- 😊 Patients with **Private Insurance** report highest satisfaction scores

---

## 📈 Power BI Dashboard Includes

- KPI cards: Total Patients, Avg Cost, Avg LOS, Avg Satisfaction
- Condition-wise patient distribution (bar chart)
- Readmission rate by condition (sorted)
- Department performance heatmap
- Monthly admission trends (2020–2025)
- Age group & gender demographic breakdown

---

## 🚀 How to Run

**1. Clone the repo**
```bash
git clone https://github.com/yourusername/Healthcare-Data-Analysis.git
cd Healthcare-Data-Analysis
```

**2. Run Python notebook**
```bash
pip install pandas matplotlib seaborn sqlalchemy openpyxl
jupyter notebook Healthcare_Data_Analysis.ipynb
```

**3. Load SQL in PostgreSQL**
```bash
# Import healthcare_cleaned.csv into PostgreSQL
# Then run Healthcare_Analysis.sql in pgAdmin 4
```

**4. Open Power BI Dashboard**
```
Open Healthcare_Analysis_Dashboard.pbix in Power BI Desktop
```

---

## 💡 Business Recommendations

1. **Reduce readmissions** — Implement post-discharge follow-up programs for Diabetes patients
2. **Cost control** — Review Cancer & Heart Disease treatment protocols for cost optimization
3. **Staff allocation** — Increase capacity in General Medicine and Cardiology departments
4. **Risk stratification** — Flag and prioritize high-risk patients (glucose + BP thresholds) at admission

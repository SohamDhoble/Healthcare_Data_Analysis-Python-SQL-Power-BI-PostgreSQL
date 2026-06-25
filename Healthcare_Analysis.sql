--Q1. Which medical condition has the highest average treatment cost?
SELECT medical_condition,
       AVG(treatment_cost_usd) AS avg_cost
FROM healthcare_cleaned
GROUP BY medical_condition
ORDER BY avg_cost DESC
LIMIT 5;

--Q2. Which department handles the most patients
SELECT department,
COUNT(*) AS total_patients
FROM healthcare_cleaned
GROUP BY department
ORDER BY total_patients DESC;

--Q3. What is the readmission rate for each medical condition?

SELECT medical_condition,
COUNT(*) AS total_patients,
SUM(CASE WHEN readmitted = 'Yes' THEN 1 ELSE 0 END) AS readmitted_count,
ROUND(
100.0 * SUM(CASE WHEN readmitted = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),2
       ) AS readmission_rate_percent
FROM healthcare_cleaned
GROUP BY medical_condition
ORDER BY readmission_rate_percent DESC
LIMIT 10;

--Q4. What is the average BMI for each medical condition?
SELECT medical_condition,
       AVG(bmi) AS avg_bmi
FROM healthcare_cleaned
GROUP BY medical_condition
ORDER BY avg_bmi DESC;

--Q5. Which age group has the highest treatment cost?
SELECT
CASE
WHEN age < 18 THEN 'Child'
WHEN age BETWEEN 18 AND 35 THEN 'Young Adult'
WHEN age BETWEEN 36 AND 60 THEN 'Adult'
ELSE 'Senior'
END AS age_group,
AVG(treatment_cost_usd) AS avg_cost
FROM healthcare_cleaned
GROUP BY age_group
ORDER BY avg_cost DESC;
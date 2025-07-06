# Salary-vs.-Years-of-Experience

📝 Project Description
This project explores the relationship between Salary and Years of Experience using a linear regression model in R. The goal is to analyze whether salary increases with years of experience and how strong that relationship is:- 

📁 Dataset
File Name: Salary_dataset.csv

Columns:

Salary: Annual salary in INR (or any currency)

Years_of_Experience: Total professional experience in years

🧪 Methodology--
Data Cleaning:-

Cleaned column names using janitor::clean_names()

Removed missing values (if any)

Model Used:-
Simple Linear Regression
years_of_Experience = β0 +  β1*salary +ϵ

Visualization:-

Scatter plot with regression line (ggplot2)

95% confidence interval around the line

Metrics:-

R-squared: 0.957

Adjusted R-squared: 0.9554
Interpretation: The model explains 95%+ of the variance in experience based on salary.

## Author 
-- Anshu Kumar


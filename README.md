# AdventureWorks Data Cleaning Project

## Overview
This project demonstrates foundational SQL data cleaning skills using the `Person.Person` table from the AdventureWorks sample database.  
The goal was to explore the dataset, validate key fields, identify potential data quality issues, and prepare cleaned versions of important columns.

This project is part of my data analyst portfolio and focuses on practical, real-world cleaning steps that analysts perform daily.

---

## Dataset
**Database:** AdventureWorks  
**Table Used:** Person.Person  
This table contains basic demographic information such as first names, last names, and an EmailPromotion flag.

---

## Cleaning Steps Performed

### **1. Explore the Table**
Used `SELECT TOP 50` to view the first 50 rows and understand the structure, column types, and general data patterns.

### **2. Check for Invalid EmailPromotion Values**
Verified whether any EmailPromotion values were outside the expected range.  
No invalid values (≥ 10) were found.

### **3. Check Existing EmailPromotion Values**
Retrieved all distinct EmailPromotion values to confirm what categories exist in the dataset.

### **4. Check for Missing Names**
Searched for rows where FirstName or LastName was NULL.  
No missing names were found.

### **5. Standardize Name Formatting**
Created cleaned versions of FirstName and LastName using `UPPER()` and `TRIM()` to ensure consistent formatting.

### **6. Check for Duplicate BusinessEntityID Values**
Grouped by BusinessEntityID to identify any duplicate records.  
No duplicates were found.

---

## Results Summary
- The dataset is generally clean and well-structured.  
- No invalid EmailPromotion values were detected.  
- No missing first or last names were present.  
- No duplicate BusinessEntityID values were found.  
- A standardized name formatting query was prepared for potential downstream use.

---

## Files in This Repository
- **cleaning_queries.sql** — Contains all SQL queries used in this project.  
- **README.md** — Project overview, explanations, and results.

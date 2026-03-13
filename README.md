# sql-data-cleaning-project
SQL project involving data cleaning and exploratory analysis using MySQL

# 🗄️ sql-data-cleaning-project
> SQL project involving data cleaning and exploratory analysis using MySQL


## 📌 Project Overview

This project focuses on **cleaning and analyzing a global layoffs dataset** using SQL in **MySQL Workbench**.

The dataset initially contained **2,361 records** and **9 columns**, representing layoff events across companies, industries, and countries.

The objective was to **clean the raw data** and perform **exploratory analysis** to identify trends in layoffs across industries, companies, and time.

---

## 🧹 Data Cleaning

To prepare the dataset for analysis, several SQL cleaning steps were performed:

- ✅ Created **staging tables** to preserve the original dataset
- ✅ Removed **duplicate rows** using `ROW_NUMBER()` window function
- ✅ Standardized **inconsistent text values** (company names, industries, countries)
- ✅ Converted the **date column** into proper SQL date format
- ✅ Trimmed **unnecessary spaces** and corrected formatting issues
- ✅ Handled **NULL and blank values** in multiple columns
- ✅ Deleted rows where both **total layoffs** and **percentage layoffs** were missing

> After cleaning, the final dataset contained **1,995 usable records**.

---

## 🔍 Exploratory Data Analysis

After cleaning the data, SQL queries were used to analyze patterns in layoffs:

- 📊 Identified companies with the **highest number of layoffs**
- 🌍 Analyzed layoffs by **industry and country**
- 📅 Calculated **yearly and monthly** layoff trends
- 🏆 Ranked companies based on layoffs using **window functions**
- 📈 Generated **rolling totals** of layoffs over time

**SQL Techniques Used:**

| Technique | Purpose |
|-----------|---------|
| `GROUP BY` | Aggregating layoffs by category |
| `CTE` (Common Table Expressions) | Breaking down complex queries |
| Window Functions | Ranking & rolling totals |
| Aggregate Functions (`SUM`, `MAX`, `AVG`) | Summary statistics |

---

## 💡 Key Skills Demonstrated

- 🔧 **Data Cleaning** using SQL
- 📊 **Exploratory Data Analysis**
- 🪟 **Window Functions & CTEs**
- 🔄 **Data Transformation and Preparation**

---

## 🛠️ Tools Used

- **MySQL Workbench**
- **SQL (MySQL)**

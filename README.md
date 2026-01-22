📊 AdventureWorks Sales Analytics & Predictive Modeling

SQL • Tableau • Machine Learning

📌 Project Overview

This project demonstrates an end-to-end data analytics and machine learning pipeline using the AdventureWorks sales dataset.
It combines SQL for data preparation, Tableau for interactive dashboards, and Machine Learning for predictive analytics to generate actionable business insights.

The project is designed for academic submission, portfolio showcase, and interview readiness.

🛠️ Tools & Technologies

Database: MySQL

Query Language: SQL

Visualization: Tableau

Programming Language: Python

Libraries: Pandas, NumPy, Matplotlib, Scikit-learn, Statsmodels

Environment: Jupyter Notebook

📂 Dataset Description

The dataset includes multi-year retail sales data with the following key tables:

sales_2015, sales_2016, sales_2017

customers

products

product_categories

product_subcategories

territories

returns

A consolidated SQL view all_sales was created to unify sales data across years.

🧱 Project Structure
├── SQL/
│   ├── all_sales_view.sql
│
├── Tableau/
│   ├── Dashboards.twbx
│
├── ML/
│   ├── Revenue_Forecasting.ipynb
│   ├── Churn_Prediction.ipynb
│   ├── High_Return_Risk.ipynb
│
├── Data/
│   ├── all_sales.csv
│   ├── products.csv
│   ├── returns.csv
│
├── Report/
│   ├── AdventureWorks_SQL_Tableau_ML_Report.pdf
│
└── README.md

🗄️ Part 1: SQL – Data Preparation
Key Tasks:

Combined yearly sales tables using UNION ALL

Created a centralized view all_sales

Performed joins with products, customers, categories, and territories

Prepared clean data for BI and ML usage

Outcome:

Unified, analysis-ready dataset

Optimized structure for dashboards and ML models

📊 Part 2: Tableau – Business Intelligence Dashboards
🔹 Dashboard 1: Revenue & Growth Overview

Total Revenue KPI

Revenue Trend (Year-wise)

Revenue by Product Category

🔹 Dashboard 2: Product & Category Insights

Top Categories by Revenue

Top Products by Revenue

Return Rate by Category

Customer Segmentation by Spend

🔹 Dashboard 3: Geographic Sales Performance

Revenue by Country (Map)

Top Regions by Revenue

Profit Margin by Territory

Business Value:

Identifies growth trends

Highlights top-performing products and regions

Supports data-driven strategic decisions

🤖 Part 3: Machine Learning – Predictive Analytics
📈 Revenue Forecasting

Monthly revenue aggregation

Time-series modeling using ARIMA

Forecasts future revenue trends for planning

🔁 Churn Prediction

Customer-level feature engineering

Logistic Regression classification model

Identifies customers at risk of churn

⚠️ High Return Risk Products

Product-level return rate analysis

Flags products with above-average return risk

Supports quality and policy improvements

📊 Key Insights

Revenue shows strong growth with stabilization in later years

Bikes and Components are top revenue-generating categories

Certain categories exhibit higher return rates

Customer spending is skewed toward low and medium segments

Predictive models help identify churn risk and return-prone products

🚀 Future Enhancements

Use advanced ML models (Random Forest, XGBoost)

Handle class imbalance using SMOTE

Deploy dashboards on Tableau Server / Public

Integrate real-time data pipelines

✅ Project Status

✔ SQL Data Preparation
✔ Tableau Dashboards
✔ Machine Learning Models
✔ Business Insights & Recommendations
✔ Submission & Portfolio Ready

👤 Author

Sanyam Sharma
📧 Email: sharmasanyam950@gmail.com

🔗 LinkedIn: https://www.linkedin.com/in/sanyam-sharma-7631ba370/

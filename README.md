# bhavna_da_capstone_project_2026
# E-Commerce Sales & Returns Analysis

## Project Overview

This project analyzes e-commerce transactional data using SQL and Python. It includes database creation, data cleaning, exploratory data analysis (EDA), visualizations, and automated business narrative generation.

The goal is to uncover customer behavior, sales trends, return patterns, and actionable business insights.

---

## Repository Structure

```text
bhavna_da_capstone_project_2026/
├── README.md
├── sql/
│   ├── schema.sql
│   ├── seed_data.sql
│   └── reports.sql
├── data/
│   ├── customers.csv
│   ├── products.csv
│   └── orders.csv
├── analysis/
│   ├── clean_and_eda.py
│   └── visualize.py
├── visualizations/
│   ├── return_rate_by_payment.png
│   └── monthly_revenue_trend.png
└── narrator/
    ├── findings.json
    └── generate_narrative.py
```

---

## Dataset Description

### Customers Dataset (`customers.csv`)
Contains customer demographic and acquisition information.

**Sample Attributes:**
- customer_id
- customer_name
- city_tier
- acquisition_source

### Products Dataset (`products.csv`)
Contains product catalog details.

**Sample Attributes:**
- product_id
- product_name
- category
- price

### Orders Dataset (`orders.csv`)
Contains transactional order records.

**Sample Attributes:**
- order_id
- customer_id
- product_id
- quantity
- discount_pct
- payment_method
- rating
- returned
- order_date

---

## SQL Components

### `schema.sql`
Creates database tables and defines relationships between entities.

### `seed_data.sql`
Loads customer, product, and order data into the database.

### `reports.sql`
Contains analytical SQL queries for:

- Revenue analysis
- Customer segmentation
- Return rate analysis
- Sales performance reports
- Product-level insights
- Payment method analysis

---

## Python Analysis

### `clean_and_eda.py`

Performs:

- Data loading
- Missing value handling
- Duplicate removal
- Data validation
- Exploratory Data Analysis (EDA)
- Statistical summaries

### `visualize.py`

Generates visual reports including:

- Return Rate by Payment Method
- Monthly Revenue Trends
- Category-wise Sales Analysis
- Customer Behavior Insights

---

## Generated Visualizations

### Return Rate by Payment Method

Displays the percentage of returned orders across different payment methods.

Output:

```text
visualizations/return_rate_by_payment.png
```

### Monthly Revenue Trend

Shows revenue fluctuations over time.

Output:

```text
visualizations/monthly_revenue_trend.png
```

---

## Automated Business Narration

### `findings.json`

Stores key analytical findings extracted from SQL and Python analysis.

Example:

```json
{
  "highest_return_payment_method": "COD",
  "best_selling_category": "Electronics",
  "monthly_revenue_growth": "12.5%"
}
```

### `generate_narrative.py`

Converts analytical findings into business-friendly insights and executive summaries.

Example Output:

> Customers using Cash on Delivery exhibit the highest return rate, indicating a potential area for fraud prevention measures. Electronics remain the top-performing product category, contributing significantly to monthly revenue.

---

## Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- SQL
- MySQL

---

## How to Run

### Step 1: Create Database

```sql
SOURCE sql/schema.sql;
```

### Step 2: Load Data

```sql
SOURCE sql/seed_data.sql;
```

### Step 3: Execute SQL Reports

```sql
SOURCE sql/reports.sql;
```

### Step 4: Run Data Cleaning & EDA

```bash
python analysis/clean_and_eda.py
```

### Step 5: Generate Visualizations

```bash
python analysis/visualize.py
```

### Step 6: Generate Business Narrative

```bash
python narrator/generate_narrative.py
```

---

## Key Business Questions

- Which payment methods have the highest return rates?
- Which product categories generate the most revenue?
- How does revenue trend over time?
- What customer acquisition sources perform best?
- Which customer segments are most valuable?
- What factors are associated with product returns?

---

## Expected Outcomes

- Improved understanding of customer purchasing patterns.
- Identification of high-risk return segments.
- Revenue trend monitoring.
- Data-driven business recommendations.
- Automated narrative generation for stakeholders.

---

## Author

**Bhavna**

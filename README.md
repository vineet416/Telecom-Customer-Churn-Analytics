# Telecom Customer Churn Analytics

End-to-end churn analysis of 7,043 telecom customers using MySQL, Python and Power BI.
It measures churn, finds what drives it, and sizes the monthly revenue at risk.
A rule-based dashboard flags the customers most likely to leave next.

## Project Files 

| File / Folder | Description |
|---|---|
| `Customer Churn Analysis.sql` | 14 MySQL queries (Q1–Q14): churn by contract, tenure, services, payment, revenue and reason |
| `EDA.ipynb` | Python notebook: loads from MySQL, cleans, segments, charts and revenue at risk |
| `Churn Analysis Dashboard.pbix` | Power BI report, 3 pages: Executive Overview, Churn Drivers, Predictive Churn Risk |
| `dataset/Telco_customer_churn.csv` | Raw data: 7,043 customers x 33 columns |
| `outputs/` | Screenshots: 14 SQL results, 6 EDA charts, 3 Power BI dashboards |

## Dataset

One row per customer (7,043 unique `CustomerID` values, no duplicate rows).

| Column(s) | Description |
|---|---|
| `Count`, `Country`, `State` | Constant values (1 / United States / California) |
| `City`, `Zip Code`, `Lat Long`, `Latitude`, `Longitude` | Location (1,129 cities) |
| `Gender`, `Senior Citizen`, `Partner`, `Dependents`, `Tenure Months` | Demographics and months as a customer (0–72) |
| `Phone Service`, `Multiple Lines`, `Internet Service` | Core services (DSL / Fiber optic / No) |
| `Online Security`, `Online Backup`, `Device Protection`, `Tech Support`, `Streaming TV`, `Streaming Movies` | Add-on services |
| `Contract`, `Paperless Billing`, `Payment Method`, `Monthly Charges`, `Total Charges` | Contract, billing setup and charges in USD |
| `Churn Label`, `Churn Value` | Churned Yes/No and 1/0 (1,869 churned) |
| `Churn Score`, `CLTV` | Precomputed risk score (5–100) and lifetime value (2,003–6,500) |
| `Churn Reason` | Stated reason, churned customers only (20 distinct) |

## Approach

1. **Understand data:** audit 33 columns; check nulls, duplicates and constant fields.
2. **Clean and load:** load the CSV into MySQL (`telco_customer_db.telco_customer_churn`); fill blank `Total Charges` in the notebook.
3. **Analyse in SQL:** churn rates by segment, revenue lost and top churn reasons.
4. **EDA in Python:** add tenure groups, revenue quartiles and service count; validate SQL findings with charts.
5. **Report in Power BI:** three dashboards with KPIs, slicers and a high-risk rule (month-to-month and tenure of 6 months or less).

## Key Insights (recomputed from the CSV)

| Area | Finding |
|---|---|
| Overall churn | 1,869 of 7,043 customers = **26.54%** |
| Contract | Month-to-month 42.71%, one year 11.27%, two year 2.83% |
| Tenure | 54.27% churn in months 0–5 vs 6.68% at 60+ months |
| Internet and support | Fiber 41.89%, DSL 18.96%, none 7.40%; no tech support 41.64% vs 15.17% with it |
| Payment | Electronic check 45.29% vs 15.24–19.11% for other methods |
| Other segments | Paperless 33.57% vs 16.33%; senior 41.68% vs 23.61%; with dependents 6.52% vs 32.55% |
| Price | Churned customers pay $74.44 a month on average vs $61.27 for active |
| Revenue at risk | **$139,130.85 a month** (30.5% of total); month-to-month is $120,847 (86.9%) |
| High-risk group | 1,413 customers (20.1%), 55.2% churned, 41.7% of all churners, $78,954 a month |
| Reasons | Competitor offers 33.2%, staff attitude 17.5%, "Price too high" 5.2% |

## Tech Stack

| Layer | Tools |
|---|---|
| Database | MySQL (aggregations, `CASE` bucketing, `GROUP BY`) |
| Analysis | Python: pandas, NumPy, Matplotlib, Seaborn, SQLAlchemy, Jupyter |
| BI | Power BI Desktop: DAX measures, slicers, box-and-whisker custom visuals |

## How to Use

1. Import `dataset/Telco_customer_churn.csv` into MySQL as `telco_customer_db.telco_customer_churn` with underscored column names.
2. Run `Customer Churn Analysis.sql` in MySQL Workbench or any MySQL client.
3. Install `pandas numpy matplotlib seaborn sqlalchemy mysql-connector-python jupyter`, set `db_config` in `EDA.ipynb`, then run all cells.
4. Open `Churn Analysis Dashboard.pbix` in Power BI Desktop, or browse the screenshots in `outputs/`.

-- Use telco_customer_db Database
USE telco_customer_db;

-- 1️. Executive Churn Overview

-- Q1. What is the overall customer churn rate?
SELECT 
    COUNT(*) AS total_customers,
    SUM(Churn_Value) AS churned_customers,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM telco_customer_churn;


-- Q2. How many customers are active vs churned?
SELECT 
    Churn_Label,
    COUNT(*) AS customer_count
FROM telco_customer_churn
GROUP BY Churn_Label;


-- 2️. Churn by Contract, Tenure & Demographics

-- Q3. Churn rate by contract type
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(Churn_Value) AS churned_customers,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM telco_customer_churn
GROUP BY Contract
ORDER BY churn_rate_pct DESC;


-- Q4. Churn rate by tenure bucket
SELECT
    CASE
        WHEN Tenure_Months < 6 THEN '0-6 Months'
        WHEN Tenure_Months < 12 THEN '6-12 Months'
        WHEN Tenure_Months < 24 THEN '12-24 Months'
        WHEN Tenure_Months < 60 THEN '24-60 Months'
        ELSE '60+ Months'
    END AS tenure_bucket,
    COUNT(*) AS total_customers,
    SUM(Churn_Value) AS churned_customers,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM telco_customer_churn
GROUP BY tenure_bucket
ORDER BY churn_rate_pct DESC;


-- Q5. Does senior citizen status affect churn?
SELECT 
    Senior_Citizen,
    COUNT(*) AS total_customers,
    SUM(Churn_Value) AS churned_customers,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM telco_customer_churn
GROUP BY Senior_Citizen;


-- 3. Service Usage & Churn Drivers

-- Q6. Churn by internet service type
SELECT 
    Internet_Service,
    COUNT(*) AS total_customers,
    SUM(Churn_Value) AS churned_customers,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM telco_customer_churn
GROUP BY Internet_Service
ORDER BY churn_rate_pct DESC;


-- Q7. Impact of tech support on churn
SELECT 
    Tech_Support,
    COUNT(*) AS total_customers,
    SUM(Churn_Value) AS churned_customers,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM telco_customer_churn
GROUP BY Tech_Support;


-- Q8. Do customers with multiple services churn less?
SELECT
    (CASE 
        WHEN Online_Security = 'Yes' THEN 1 ELSE 0 END +
     CASE 
        WHEN Online_Backup = 'Yes' THEN 1 ELSE 0 END +
     CASE 
        WHEN Device_Protection = 'Yes' THEN 1 ELSE 0 END +
     CASE 
        WHEN Tech_Support = 'Yes' THEN 1 ELSE 0 END +
     CASE 
        WHEN Streaming_TV = 'Yes' THEN 1 ELSE 0 END +
     CASE 
        WHEN Streaming_Movies = 'Yes' THEN 1 ELSE 0 END
    ) AS service_count,
    COUNT(*) AS customers,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM telco_customer_churn
GROUP BY service_count
ORDER BY service_count;


-- 4. Payment Behavior & Churn Risk

-- Q9. Churn by payment method
SELECT 
    Payment_Method,
    COUNT(*) AS total_customers,
    SUM(Churn_Value) AS churned_customers,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM telco_customer_churn
GROUP BY Payment_Method
ORDER BY churn_rate_pct DESC;


-- Q10. Is paperless billing linked to churn?
SELECT 
    Paperless_Billing,
    COUNT(*) AS total_customers,
    SUM(Churn_Value) AS churned_customers,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM telco_customer_churn
GROUP BY Paperless_Billing;


-- 5. Revenue Impact & Financial Risk

-- Q11. How much monthly revenue is lost due to churn?
SELECT 
    ROUND(SUM(Monthly_Charges), 2) AS monthly_revenue_lost
FROM telco_customer_churn
WHERE Churn_Value = 1;


-- Q12. Revenue lost by contract type
SELECT 
    Contract,
    ROUND(SUM(Monthly_Charges), 2) AS revenue_lost
FROM telco_customer_churn
WHERE Churn_Value = 1
GROUP BY Contract
ORDER BY revenue_lost DESC;


-- Q13. Are high-value (CLTV) customers churning?
SELECT
    CASE 
        WHEN CLTV >= 5000 THEN 'High CLTV'
        WHEN CLTV >= 3000 THEN 'Medium CLTV'
        ELSE 'Low CLTV'
    END AS cltv_segment,
    COUNT(*) AS customers,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM telco_customer_churn
GROUP BY cltv_segment
ORDER BY churn_rate_pct DESC;


-- 6. Root Cause Analysis (Why Customers Churn)

-- Q14. Top churn reasons
SELECT 
    Churn_Reason,
    COUNT(*) AS churn_count
FROM telco_customer_churn
WHERE Churn_Value = 1
GROUP BY Churn_Reason
ORDER BY churn_count DESC;
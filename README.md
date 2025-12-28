# 📊 Telecom Customer Churn Analytics  
**End-to-End Business Intelligence Project (MySQL · Python · Power BI)**

---

## 📌 Project Overview

Customer churn is one of the most critical challenges in the **telecom industry**, where acquiring a new customer is significantly more expensive than retaining an existing one.

This project delivers an **end-to-end churn analytics solution** that enables business stakeholders to:
- Understand **why customers are leaving**
- Identify **high-risk customer segments**
- Quantify **revenue at risk**
- Take **data-driven retention actions**

The solution integrates:
- **MySQL** for business querying and metric generation  
- **Python** for exploratory data analysis (EDA) and insight validation  
- **Power BI** for executive dashboards and decision-making  

---

## 🎯 Business Problem Statement

Despite offering competitive services, the telecom company is experiencing **high customer churn**, leading to:
- Loss of recurring revenue
- Increased customer acquisition costs
- Reduced customer lifetime value (CLTV)

### Key Business Challenges
- Limited visibility into **churn drivers**
- No proactive identification of **at-risk customers**
- Revenue impact of churn not clearly quantified

---

## 🧠 Business Objectives

1. Measure **overall churn performance**
2. Identify **key drivers of churn**
3. Segment customers by **risk and value**
4. Quantify **revenue loss due to churn**
5. Enable **actionable retention decisions** for leadership

---

## 🗂 Dataset

- **Source:** Telecom customer churn dataset  
- **Records:** ~7,000 customers  
- **Key Attributes:**
  - Demographics (Senior Citizen, Partner, Dependents)
  - Services (Internet Service, Tech Support, Streaming)
  - Contract & Billing (Contract Type, Payment Method, Paperless Billing)
  - Financials (Monthly Charges, Total Charges, CLTV)
  - Churn outcome and churn reason

---

## 🛠️ Tech Stack

| Layer | Tools |
|---|---|
| Database | MySQL |
| Analysis | SQL, Python (Pandas, Matplotlib, Seaborn) |
| BI & Reporting | Power BI |

---

## 📁 Project Structure
```
Customer Churn Analysis/
│
├── Customer Churn Analysis.sql    # SQL queries for data analysis
├── EDA.ipynb                       # Exploratory Data Analysis notebook
├── README.md                       # Project documentation
│
├── dataset/
│   └── Telco_customer_churn.csv   # Raw customer churn dataset
│
└── outputs/
    ├── EDA Visuals/               # Python EDA charts
    ├── Power BI Dashboards/       # Power BI dashboards
    └── SQL Outputs/               # SQL querie results
```
---

## 🧮 Business Questions Answered Using SQL

Below are the key business questions answered using MySQL, along with **concise, decision-oriented insights** derived from the query results.

---

### 1️⃣ What is the overall customer churn rate?  
![alt text](<outputs/SQL Outputs/1-overall customer churn rate.png>)    
**Insight:** The company is experiencing a high churn rate of **~26.5%**, indicating significant customer retention challenges.

---

### 2️⃣ How many customers are active vs churned? 
![alt text](<outputs/SQL Outputs/2-active vs churned customers.png>)    
**Insight:** Out of ~7,000 customers, nearly **1 in 4 customers has churned**, highlighting material revenue leakage.

---

### 3️⃣ How does churn vary by contract type?     
![alt text](<outputs/SQL Outputs/3-Churn rate by contract type.png>)    
**Insight:** **Month-to-month contracts show the highest churn (~43%)**, while long-term contracts dramatically reduce churn risk.

---

### 4️⃣ How does churn vary by customer tenure?       
![alt text](<outputs/SQL Outputs/4-Churn rate by tenure bucket.png>)    
**Insight:** Churn is highest (**~54%**) in the **first 6 months**, confirming early customer experience as the most critical retention phase.

---

### 5️⃣ Does senior citizen status affect churn?      
![alt text](<outputs/SQL Outputs/5-Does senior citizen status affect churn.png>)    
**Insight:** **Senior citizens churn at nearly twice the rate** of non-senior customers, indicating higher sensitivity to pricing and service quality.

---

### 6️⃣ How does churn vary by internet service type?         
<img width="531" height="96" alt="image" src="https://github.com/user-attachments/assets/0d29e4cc-daba-4413-8766-f1bfd8b2c9af" />        

**Insight:** **Fiber optic customers exhibit the highest churn (~42%)**, despite being premium users, signaling service or support gaps.

---

### 7️⃣ What is the impact of tech support on churn?          
![alt text](<outputs/SQL Outputs/7-Impact of tech support on churn.png>)    
**Insight:** Customers **without tech support churn nearly 3× more** than those with support, making it a high-impact retention lever.

---

### 8️⃣ Do customers with multiple services churn less?           
![alt text](<outputs/SQL Outputs/8-Do customers with multiple services churn less.png>)         
**Insight:** Churn decreases steadily as service count increases, proving that **service bundling significantly improves customer stickiness**.

---

### 9️⃣ How does churn vary by payment method?            
<img width="590" height="119" alt="image" src="https://github.com/user-attachments/assets/2527e3c4-0ff9-4f5d-ae79-4d53b11985e4" />          

**Insight:** Customers using **electronic check payments have the highest churn (~45%)**, while automatic payments show much lower churn.

---

### 🔟 Is paperless billing linked to churn?        
![alt text](<outputs/SQL Outputs/10-Is paperless billing linked to churn.png>)        
**Insight:** Customers enrolled in paperless billing churn at **more than double the rate**, suggesting billing friction or engagement issues.

---

### 1️⃣1️⃣ How much monthly revenue is lost due to churn?           
![alt text](<outputs/SQL Outputs/11-monthly revenue is lost due to churn.png>)         
**Insight:** The company is losing approximately **$139K in monthly recurring revenue** due to customer churn.

---

### 1️⃣2️⃣ Which contract types drive the highest revenue loss?         
![alt text](<outputs/SQL Outputs/12-Revenue lost by contract type.png>)         
**Insight:** **Month-to-month contracts account for the majority of revenue loss (~$121K/month)**, making them the top priority for intervention.

---

### 1️⃣3️⃣ Are high-value (CLTV) customers churning?            
![alt text](<outputs/SQL Outputs/13-Are high-value (CLTV) customers churning.png>)         
**Insight:** While high-CLTV customers churn less frequently, their churn still represents **disproportionately high revenue impact**.

---

### 1️⃣4️⃣ What are the top stated reasons for churn?           
![alt text](<outputs/SQL Outputs/14-Top churn reasons.png>)         
**Insight:** Churn is primarily driven by **poor service experience, competitive offerings, and pricing dissatisfaction**, not random behavior.

---

### 1️⃣5️⃣ Which customer segments contribute most to churn risk?       
**Insight:** **Early-tenure, month-to-month, fiber customers without tech support and using electronic check payments** form the highest-risk segment.      

---

### ✅ Summary
**Overall Insight:** Churn is driven by a combination of **contract structure, early lifecycle experience, service support gaps, pricing sensitivity, and payment friction**, all of which are addressable through targeted business actions.

---

## 📊 Python EDA – Key Insights

Python was used to validate SQL findings, explore customer behavior, and generate **actionable business insights**.

### 🔹 Key EDA Findings

#### 1. Churn by Customer Tenure    
![alt text](<outputs/EDA Visuals/Churn Rate by Customer Tenure.png>)    
- Churn exceeds **54% in the first 6 months**
- Drops steadily as tenure increases  
➡ Early customer experience is the most critical retention window

#### 2. Monthly Charges vs Churn
![alt text](<outputs/EDA Visuals/Monthly Charges Distribution by Churn Status.png>)         
- Churned customers have **higher monthly charges**
- Indicates strong **price sensitivity**

#### 3. Fiber Customers & Tech Support      
![alt text](<outputs/EDA Visuals/Fiber Customers Impact of Tech Support on Churn.png>)      
- Fiber customers without tech support churn at **more than double** the rate
- Tech support is a high-impact retention lever

#### 4. Service Count & Stickiness      
![alt text](<outputs/EDA Visuals/Churn Rate by Number of Services.png>)         
- Customers with 1–2 services show the **highest churn**
- Churn decreases significantly as service count increases

#### 5. Payment Method Impact       
![alt text](<outputs/EDA Visuals/Churn Rate by Payment Method.png>)     
- **Electronic check** users have the highest churn (~45%)
- Automatic payment users are significantly more stable

#### 6. Revenue at Risk     
![alt text](<outputs/EDA Visuals/Revenue at Risk by Contract and Revenue Segment.png>)      
- Revenue loss is heavily concentrated in **month-to-month, high-value customers**

---

## 📈 Power BI Dashboards

### 1️⃣ Executive Churn Overview      
![alt text](<outputs/Power BI Dashboards/Executive Churn Overview Dashboard.png>)        

**Purpose:** High-level view of churn health and financial impact

**KPIs:**
- Total Customers
- Churn Rate
- Revenue at Risk
- Avg Tenure of Churned Customers

**Key Visuals:**
- Churn trend by tenure
- Churn by contract type
- Revenue loss by churn segment

---

### 2️⃣ Churn Drivers Analysis        
![alt text](<outputs/Power BI Dashboards/Churn Drivers Analysis Dashboard.png>)        

**Purpose:** Diagnose *why* customers are leaving

**KPIs:**
- Overall Churn Rate
- Max Churn Rate by Contract
- Early Tenure Churn Rate
- High Charge Churn Rate

**Key Visuals:**
- Churn by internet service
- Churn by tenure bucket
- Churn by payment method
- Monthly charges distribution by churn status

---

### 3️⃣ Predictive Churn Risk (Rule-Based)        
![alt text](<outputs/Power BI Dashboards/Predictive Churn Risk Dashboard.png>)      

**Purpose:** Enable proactive, targeted retention actions

**KPIs:**
- High Risk Customers
- High Risk Customer %
- High Risk Revenue
- Avg Monthly Charges (High Risk)
- Avg Tenure (High Risk)

**Key Visuals:**
- Churn risk distribution
- High-risk customer table
- Interactive slicers for campaign targeting

---

## 🔍 Key Business Insights

- **Overall churn rate:** ~26.5%
- **Month-to-month contracts** have the highest churn (~43%) and revenue loss
- **Early tenure (0–6 months)** customers are most likely to churn
- **Fiber optic customers** face higher churn risk without tech support
- **Electronic check payment method** is a major churn driver
- Churn decreases significantly as **service bundling increases**

---

## 💡 Business Recommendations & Retention Strategy

### 🎯 Retention Strategies

1. **Early-Tenure Retention Program**
   - Proactive onboarding and engagement within first 6 months

2. **Contract Migration Campaign**
   - Incentivize month-to-month customers to switch to long-term contracts

3. **Fiber + Tech Support Bundling**
   - Reduce churn by bundling support services with fiber plans

4. **Payment Method Optimization**
   - Encourage auto-pay adoption through discounts or incentives

5. **High-Value Customer Protection**
   - Personalized offers and priority support for high-CLTV customers

---

## 💰 Cost-Benefit & Impact Quantification

- **Monthly revenue at risk:** ~$139K
- **High-risk customers:** ~20% of total base
- Majority of revenue loss comes from **high-value, month-to-month customers**

### Expected Impact
- Target top **20% high-risk customers**
- Estimated **5–8% churn reduction**
- Potential **six-figure annual revenue savings**

---

## 📌 KPIs Tracked

- Churn Rate (%)
- Revenue at Risk
- Early Tenure Churn Rate
- High-Risk Customer %
- Avg Tenure (Churned / High Risk)
- Contract & Payment Method Churn Rates

---

## 🧠 Key Takeaway

This project demonstrates how **data analytics can move from descriptive reporting to proactive decision-making**, enabling leadership to:
- Understand churn drivers
- Quantify financial impact
- Take targeted, data-backed retention actions

---

## 🚀 Author

**Vineet Patel**  
Data Analytics · Business Intelligence

- 📧 Email: vineetpatel468@gmail.com
- 🐙 GitHub: [@vineet416](https://github.com/vineet416)
- 💼 LinkedIn: [@vineet416](https://linkedin.com/in/vineet416)

---

## ⭐ Show Your Support

Give a ⭐️ if this project helped you!

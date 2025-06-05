## 🧪 A/B Testing: SaaS Onboarding Flow Optimization  
**Improving User Conversion Through Data-Driven Experimentation**

**Tools:** Excel • SQL • R • Kaggle(Dataset sourcing)


# 📌 Business Problem  
SaaS platforms often face drop-offs during onboarding. This project tests whether a **new onboarding flow** improves user conversion compared to the existing flow using an A/B testing framework.


# 🎯 **Objectives**  
- Clean and validate experiment data  
- Perform **statistical hypothesis testing**  
- Visualize conversion trends using Power BI  
- Guide product decision-making using data


# 🧬 **Experiment Design**  
| Group      | Description                      |
|------------|----------------------------------|
| Control    | Existing onboarding flow         |
| Treatment  | Redesigned onboarding experience |

✔️ Each user should see **only one version**. Duplicates were removed using SQL to ensure test integrity.


# 🧹 **Data Validation & Cleaning**  
The dataset was inspected for test design violations and cleaned:  
![image](https://github.com/user-attachments/assets/4226080d-5182-46d7-823a-e8b68ab0bc4d)

# 📌 **Post-cleaning sample sizes:**
- Control Group: 18,942 users
- Treatment Group: 19,086 users

# 📊 **Conversion Analysis:**
Using SQL to calculate conversion rates:
![image](https://github.com/user-attachments/assets/111fd7a9-feab-41ca-acda-d37460caf668)

# 📈 **Results:**
![image](https://github.com/user-attachments/assets/8a7099d2-0d1e-4f1f-936e-2d971628f41c)

# 📐 **Statistical Testing:**
A two-proportion z-test was conducted in R to test for statistical significance:
![image](https://github.com/user-attachments/assets/5c0a8921-2319-4bf6-adb5-2c231d2e7657)
📌 P-Value: 0.3422
✅ Conclusion: No statistically significant difference. The new onboarding flow does not outperform the existing one.

# 📊 **Excel Dashboard:**
![Screenshot 2025-05-31 210828](https://github.com/user-attachments/assets/e336f5c8-ee1e-4851-85fd-c2d9c0175adf)

# 📂 **Repository Structure:**
ab-testing-saas-onboarding/
├── data/                  # A/B test raw data
├── analysis/              # SQL and R scripts
│   ├── ab_test_analysis.R
│   └── ab_test_sql.sql
├── dashboard/
│   └── ab_test_dashboard.png
├── images/                # Dashboard screenshots
└── README.md

# 💼 **Business Impact:**
![image](https://github.com/user-attachments/assets/da523e6d-8f93-4725-a06f-39e725aa469c)

# 🧠 **Key Challenges & Solutions:**
![image](https://github.com/user-attachments/assets/26e249cf-17a7-4de7-9854-3f3dce9c2de3)

# ✅ **Key Takeaways:**
- Clean data = Credible results
- No uplift: The new flow doesn’t justify replacement
- Dashboards make results actionable and shareable

# 🚀 **Next Steps:**
- Run multivariate tests (e.g., CTA + layout)
- Deploy tests using tools like Mixpanel or Optimizely
- Automate result pipelines using R Shiny or Streamlit
- Include behavioral segmentation for deeper analysis

# 📌 **Summary:**
This project demonstrates how A/B testing, when done right, can protect companies from expensive product decisions. From SQL-based validation and statistical testing to Excel Daashboard insights, the project highlights a full-cycle experimental workflow that prioritizes rigor, clarity, and business alignment using fundamental tools.

# Crop Yield Analysis: An End-to-End Data Analytics Project

## Introduction
This project is a comprehensive analysis of a large-scale agricultural dataset containing 1 million records. The goal was to identify the key factors that drive crop yield, moving from high-level exploration to a final predictive analysis.

---

## Tools Used
- **SQL (MySQL):** For initial data exploration and answering core business questions.
- **Python (Pandas, Scikit-learn):** For robust data loading, cleaning, and building a predictive model to identify key drivers.
- **Power BI:** For creating a multi-page, interactive dashboard to visualize the findings.
- **PowerPoint:** For summarizing the project's narrative and final conclusions.

---

## Key Findings & Insights
- **Water is King:** The analysis conclusively showed that water availability (from rainfall and irrigation) is the single most critical driver of crop yield. Irrigation alone boosted yields by **30%**.
- **Climate over Weather:** Long-term climate patterns like total rainfall and average temperature had a massive impact, while daily weather conditions (sunny, rainy, etc.) were found to be negligible.
- **Static Factors Are Minimal:** Factors like region, soil type, and even crop choice had a surprisingly small impact on yield (<1% variance), suggesting they are not the primary drivers.

---

## Project Files
- **/Crop Yield Dashboard.pbix:** The complete, interactive Power BI dashboard.
- **/Final Report.pptx:** The final PowerPoint presentation summarizing the project's story.
- **/crop_yield_analysis.sql:** The SQL script containing all the analytical queries.
- **/feature_importance_model.py:** The Python script used to train the Random Forest model and determine the most predictive factors.
- **/crop_yield.csv:** The original raw dataset (sample or link).

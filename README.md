# 📊 Machine Learning Project Portfolio

This repository contains a diverse set of machine learning projects exploring regression, classification, clustering, and inductive logic programming (ILP) tasks. These mini-projects apply multiple learning algorithms to structured real-world datasets and analyze their performance using relevant metrics.


## 🔢 Summary of Experiments

| Task Type              | Dataset Description                                                  | Models/Techniques Used                  |
| ---------------------- | -------------------------------------------------------------------- | --------------------------------------- |
| **Clustering**         | Lifestyle & obesity prediction (2,078 rows)                          | K-Means, Hierarchical Clustering, PCA   |
| **Regression (Small)** | Garment productivity prediction (1,197 rows)                         | SVR, MLP, Decision Tree                 |
| **Regression (Large)** | IT incident resolution prediction (141,712 rows)                     | SVR, MLP, Decision Tree                 |
| **Classification**     | Income level prediction (>50K) (48,842 rows)                         | LinearSVC, MLPClassifier, Decision Tree |
| **ILP (Symbolic)**     | Income rule learning via Inductive Logic Programming (500 instances) | Aleph (Prolog-based ILP engine)         |


## 📅 Subfolders

* [`clustering`](./clustering) – Obesity risk analysis using K-Means and Hierarchical Clustering
* [`regression_small`](./regression_small) – Predicting garment productivity
* [`regression_large`](./regression_large) – Predicting IT incident resolution times
* [`classification`](./classification) – Income classification with various ML models
* [`ilp`](./ilp) – Rule-based classification using Aleph ILP engine


## 🔍 Discussion of Results and Critical Assessment

### 🔄 Regression

* **IT Incident Resolution**: MLP achieved the best performance (MAE = 0.823, R² = 0.755), capturing complex patterns in larger datasets. Decision Trees provided moderate performance and transparency, while SVR struggled with linear assumptions.

* **Garment Productivity**: On the smaller, noisier dataset, Decision Tree achieved the highest test R² (0.39). This shows that simpler models often perform better on small datasets, especially when complex models may overfit.

### 🧠 Classification & ILP

* **Income Prediction**: MLPClassifier performed best in terms of accuracy and ROC-AUC. LinearSVC showed higher recall, valuable in contexts where missing true positives is costly. Decision Trees balanced accuracy and interpretability.

* **ILP**: Performance improved from 80% to 98% when background knowledge and parameters were fine-tuned. The trade-off observed was between rule generalization and instance-specific overfitting, showcasing ILP’s power in symbolic, structured domains.

### 🔎 Clustering

* **Obesity Risk Clustering**: K-Means outperformed Hierarchical Clustering based on Silhouette Score and Davies-Bouldin Index. Clusters were well-separated and interpretable, confirming that clustering algorithm selection must consider data assumptions.


## 💪 Skills Demonstrated

* Data preprocessing and cleaning for real-world datasets
* Model selection and hyperparameter tuning
* Evaluation using cross-validation and domain-relevant metrics
* Interpretation of results and comparison across models
* Use of both symbolic (ILP) and statistical ML approaches


## 🛠️ Tools & Libraries

* Python, Jupyter Notebooks
* scikit-learn, pandas, numpy, matplotlib, seaborn
* SWI-Prolog and Aleph ILP engine
* Git & GitHub for version control and documentation

## 👩‍💻 Author

**Shivasmi Sharma**  
Bioinformatics Analyst | MSc Data Science  
📧 Email: [shivasmisharma646@gmail.com](mailto:shivasmisharma646@gmail.com)  
🔗 LinkedIn: [linkedin.com/in/shivasmi-sharma](https://www.linkedin.com/in/shivasmi-sharma)  
🐙 GitHub: [github.com/shivasmi07](https://github.com/shivasmi07)


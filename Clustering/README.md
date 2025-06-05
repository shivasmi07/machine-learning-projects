# Clustering – Obesity Risk Group Detection

## 🧩 Problem Statement

The goal is to apply clustering algorithms to group individuals based on lifestyle, physical activity, and eating habits, in order to identify **obesity risk segments**. This can help in designing targeted health interventions and public wellness programs without needing labeled data.


## 📊 Dataset

- **Source:** [UCI Estimation of Obesity Levels Dataset](https://archive.ics.uci.edu/dataset/544/estimation+of+obesity+levels+based+on+eating+habits+and+physical+condition)  
- **Instances:** 2,078 (after preprocessing)  
- Features include physical condition, eating frequency, activity levels, and family history


## 🧪 Algorithms Compared

- **K-Means Clustering:**  
  - Explored `k` from 2 to 10  
  - Chose optimal `k=3` using **Silhouette Score**

- **Agglomerative Hierarchical Clustering:**  
  - Used Ward linkage with Euclidean distance  
  - Also tested for `k=3` to allow direct comparison

## ⚙️ Preprocessing

- Applied **RobustScaler** to normalize feature ranges  
- Outliers handled implicitly via robust scaling  
- No label supervision applied; fully unsupervised approach

## 📈 Evaluation Metrics

| Metric                     | K-Means (k=3) | Hierarchical (k=3) |
|---------------------------|---------------|---------------------|
| **Silhouette Score**      | 0.47          | 0.44                |
| **Davies-Bouldin Index**  | 0.62          | 0.68                |

- Also evaluated using **Calinski-Harabasz Index**  
- Visual validation via **PCA 2D projection** for interpretability

## 📌 Results Summary

- Both clustering methods successfully revealed 3 distinct lifestyle-based groups:  
  1. **Active / Low Risk**  
  2. **Moderate / Transitional**  
  3. **Sedentary / High Risk**

- PCA projections confirmed cluster separation  
- K-Means showed slightly better performance and cohesion

## 📚 Conclusion

The null hypothesis is rejected. Both K-Means and Hierarchical clustering produced meaningful obesity-related clusters, with K-Means performing slightly better. These insights can support **unsupervised segmentation** in **public health and wellness strategy development**.

## 🧰 Tools Used

- Python, Pandas, NumPy  
- scikit-learn (KMeans, AgglomerativeClustering, Silhouette Score, etc.)  
- Seaborn, Matplotlib  
- PCA, RobustScaler

## 📁 Notebooks

- `KMeans.ipynb` – Standalone KMeans implementation  
- `Hierarchical.ipynb` – Agglomerative clustering with dendrogram  
- `Pipeline.ipynb` – Unified comparison of both methods
- `Preprocessing.ipynb` – Data cleaning, encoding, robust scaling.  


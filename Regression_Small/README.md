# Regression – Garment Productivity Prediction

## 🧩 Problem Statement

The goal is to predict the productivity of garment employees based on workday features. Accurate predictions can support better workforce planning and operational efficiency in manufacturing units.

## 📊 Dataset

- **Source:** [UCI Productivity Prediction of Garment Employees](https://archive.ics.uci.edu/dataset/597/productivity+prediction+of+garment+employees)  
- **Size:** 1,197 instances  
- Includes features like department, day, team, wip (work in progress), and actual productivity

## ⚙️ Preprocessing

- **Missing Values:** Median imputation  
- **Encoding:** Target mean encoding for categorical variables  
- **Scaling:** StandardScaler applied to numeric features  
- **Outlier Handling:** IQR-based capping for extreme values

## 🧪 Algorithms Compared

| Model          | CV R² Score | Test R² Score | Test MSE  |
|----------------|-------------|----------------|-----------|
| SVR (RBF)      | 0.35        | 0.34           | 0.0176    |
| MLP (tanh)     | 0.35        | 0.34           | 0.0176    |
| Decision Tree  | 0.33        | 0.39           | 0.0162    |

- **Support Vector Regression (SVR)**  
  `kernel='rbf', C=1.0, gamma='scale'`

- **Multi-Layer Perceptron (MLP)**  
  `hidden_layer_sizes=(100,), activation='tanh', max_iter=500`

- **Decision Tree Regressor**  
  `max_depth=10, criterion='squared_error'`

## 🧪 Evaluation Strategy

- **Split:** 80/20 train-test split with `random_state=42`  
- **Hyperparameter Tuning:** 5-fold CV using `GridSearchCV`  
- **Metrics:**
  - **Mean Squared Error (MSE)**  
  - **R² Score**  

## 📌 Results Summary

- **MLP** and **SVR** showed nearly identical performance with test R² = 0.34  
- **Decision Tree** achieved higher test R² (0.39) but had greater risk of overfitting  
- All models outperformed a linear baseline, proving their ability to capture nonlinear trends in small datasets

## 🧪 Conclusion

The **null hypothesis** is rejected. Model choice **does impact** regression performance on this dataset.  
MLP and SVR demonstrated consistency and non-linear pattern capture, while Decision Tree provided higher test accuracy at the cost of interpretability. This project highlights that even on relatively small datasets, model tuning and architecture significantly affect predictive outcomes.

## 🧰 Tools Used

- Python, Pandas, NumPy  
- scikit-learn (SVR, DecisionTreeRegressor, MLPRegressor, GridSearchCV)  
- Matplotlib, Seaborn  
- StandardScaler, IQR handling, target encoding

## 📁 Notebooks

- `SVR.ipynb` – Implements Support Vector Regression with tuning and evaluation  
- `Perceptron.ipynb` – Perceptron regression model with hyperparameter tuning  
- `Decisiontree.ipynb` – Decision Tree Regressor with depth tuning and error analysis  
- `Pipeline.ipynb` – Unified comparison of all three models: SVR, Perceptron, and Decision Tree  
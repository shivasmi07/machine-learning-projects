# Regression – IT Incident Resolution Time Prediction

## 🧩 Problem Statement

The objective is to predict the **time to resolution** for IT service desk incidents using event log data. Accurately estimating resolution time can improve incident triaging, resource allocation, and service-level planning in IT operations.

## 📊 Dataset

- **Source:** [UCI Incident Management Process Enriched Event Log](https://archive.ics.uci.edu/dataset/498/incident+management+process+enriched+event+log)  
- **Size:** 141,712 instances  
- Includes incident timestamps, assignment details, and metadata used to calculate `time_to_resolution`

## ⚙️ Preprocessing

- Dropped missing or irrelevant fields (e.g., `resolved_at`, `rfc`, `vendor`)  
- Log-transformed `time_to_resolution` for normalization  
- Standardized numeric features for **SVR** and **MLP** using `StandardScaler`  
- IQR-based capping for outlier control (excluding low-variance binary features)  
- **Categorical Encoding:**
  - High-cardinality features: Target or frequency encoding  
  - Low-cardinality features: One-hot encoding

## 🧪 Algorithms Compared

| Model          | MAE    | RMSE   | R² Score |
|----------------|--------|--------|----------|
| Decision Tree  | 1.058  | 1.488  | 0.579    |
| SVR (linear)   | 1.187  | 1.503  | 0.568    |
| MLP (best)     | 0.823  | 1.132  | 0.755    |

- **Decision Tree Regressor**  
  `max_depth=5–20`, `criterion='squared_error'` or `'friedman_mse'`

- **Support Vector Regression (SVR)**  
  `C=0.1–2`, `kernel='linear'`, `gamma='scale'`

- **Multi-Layer Perceptron (MLP)**  
  `hidden_layer_sizes=(50,), (100,), (50, 50)`, `activation='relu' or 'tanh'`, `alpha=0.0001–0.01`

## 🧪 Evaluation Strategy

- **Split:** 80/20 train-test split (`random_state=42`)  
- **Tuning:** `RandomizedSearchCV` with 3-fold cross-validation  
- **Metrics:**
  - **Mean Absolute Error (MAE)** – Easy to interpret  
  - **Root Mean Squared Error (RMSE)** – Penalizes large errors  
  - **R² Score** – Measures variance explained

## 📌 Results Summary

- **MLP Regressor** significantly outperformed others with the lowest MAE (0.823), lowest RMSE (1.132), and highest R² (0.755)  
- **SVR** performed worst due to limited flexibility from its linear kernel  
- **Decision Tree** was decent but limited by simplicity and lower generalization

## 📚 Conclusion

The **null hypothesis is rejected**. Regression algorithm choice **does significantly affect** predictive performance.  
MLP proved most effective at capturing non-linear patterns in large-scale IT incident logs. This project shows the importance of model selection in operational ML tasks involving time prediction.

## 🧰 Tools Used

- Python, Pandas, NumPy  
- scikit-learn (SVR, DecisionTreeRegressor, MLPRegressor, RandomizedSearchCV)  
- Matplotlib, Seaborn  
- Encoding techniques: Target, frequency, one-hot  
- Log transformation, StandardScaler, IQR capping

## 📁 Notebooks

- `SVR.ipynb` – Linear SVR regression and tuning  
- `Perceptron.ipynb` – MLP implementation with hyperparameter search  
- `Decisiontree.ipynb` – Decision Tree with depth tuning  
- `Pipeline.ipynb` – Side-by-side model comparison (plots + metrics)

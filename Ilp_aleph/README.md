# ILP – Income Classification using Aleph

## 🧩 Problem Statement

The objective is to use **Inductive Logic Programming (ILP)** to learn symbolic rules that classify whether an individual's income exceeds $50K/year based on socio-economic attributes. This approach aims to explore rule interpretability and predictive accuracy using logical inference.

## 📊 Dataset

- **Source:** [UCI Census Income Dataset](https://archive.ics.uci.edu/dataset/20/census+income)  
- **Original Size:** 48,842 instances  
- **ILP Subset:** A stratified sample of **500 instances** was extracted from the classification dataset for symbolic learning.  
- Features include education, occupation, marital status, workclass, and more

## ⚙️ ILP Configuration

- **ILP Engine:** Aleph v5  
- **Environment:** SWI-Prolog v8.4  
- **Learning Predicate:** `more_than_50k(X)`  
## 🔁 Experiment Setup

### 🔹 Run 1
- **Background Knowledge:** `Background1.pl`  
- **Parameters:**  
  `minpos=2, noise=1, i=10, clauselength=6, nodes=10000`  
- **Strategy:** Top-down covering using mode declarations  
- **Outcome:**  
  - 3 interpretable, general rules  
  - Accuracy: **80%**  
  - More generalization, higher false negatives

### 🔹 Run 2
- **Background Knowledge:** `Background2.pl`  
- **Parameters:**  
  `minpos=1, noise=1` (others same as Run 1)  
- **Outcome:**  
  - Many instance-specific rules  
  - Accuracy: **98%**  
  - No false negatives, but overfitting risk increased

## 📈 Results Summary

| Run   | TP | TN | FP | FN | Accuracy |
|--------|----|----|----|----|----------|
| Run 1 | 16 | 24 | 1  | 9  | 80%      |
| Run 2 | 25 | 24 | 1  | 0  | 98%      |

- **Run 1:** Balanced accuracy and interpretability; produced reusable rules such as income being high if occupation = exec_managerial and marital_status = married  
- **Run 2:** High accuracy but lower generalization; rules became more overfit and specific

## 📚 Conclusion

The **null hypothesis is rejected**. Aleph’s performance and output are significantly influenced by both **background knowledge** and **parameter tuning**.  
This experiment reveals a common trade-off in symbolic learning: **higher accuracy can reduce interpretability**, and vice versa. When using ILP in practice, it’s critical to balance expressiveness, overfitting risk, and explanatory power.

## 🧰 Files

- `aleph.pl` – Main ILP experiment file with facts, rules, and Aleph configurations  
- `Background1.pl` – General background predicates (for Run 1)  
- `Background2.pl` – Refined/expanded background knowledge (for Run 2)

## 🛠 Tools Used

- SWI-Prolog v8.4  
- Aleph v5  
- Logical reasoning, mode declarations, rule induction  

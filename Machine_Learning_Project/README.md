# Machine Learning Classification | Model Selection and Imbalanced Data

**Academic project — LINFO2262, UCLouvain (2026)**

This repository presents a machine-learning competition project focused on **binary classification with imbalanced classes** (approximately 90% negative and 10% positive). It contains the analysis notebook, project report, and the supplied datasets that are available for publication.

## Project highlights

- Compared six candidate model families, including logistic regression, support vector machines, neural networks and tree-based classifiers.
- Selected an **ExtraTrees classifier** and tuned its hyperparameters with **Optuna** using a two-stage search (50 broad trials, 30 focused trials).
- Evaluated performance using **repeated stratified 5-fold cross-validation** and calibrated the decision threshold for **balanced classification rate (BCR)**.
- Analysed feature importance, dimensionality reduction, confusion matrix, ROC curve, and nested cross-validation estimates.

## Results reported in the accompanying report

| Metric | Reported value |
|---|---:|
| Mean cross-validation BCR | 0.77759 |
| CV standard deviation | 0.03228 |
| ROC AUC | 0.8320 |
| Calibrated classification threshold | 0.275 |
| Conservative estimated test BCR | 0.75674 |

**Note:** These are results documented in the academic report, **not independently rerun or verified** for this portfolio. The conservative estimated test BCR is an estimate, not a measured hidden-test score.

## Repository contents

```text
Machine_Learning_Classification.ipynb   # Original submitted analysis notebook
Machine_Learning_Report.pdf             # Original academic report
data/
  A5_2026_test.csv                      # Unlabelled test features (provided)
  A5_2026_train_labels.csv              # Training labels (provided)
requirements.txt                        # Python packages used in the notebook
```

### Missing dataset: training features

The original notebook also loads **`A5_2026_train.csv`**. That file was **not included** among the supplied uploads, so the repository does **not yet contain everything needed to rerun the analysis**. The available test features and training labels are included exactly as provided. The notebook also produces `predictions_model3.csv` when executed successfully.

## Running the analysis

1. Install Python and the dependencies listed in `requirements.txt`.
2. Download this repository.
3. Obtain the missing `A5_2026_train.csv` from the original course dataset, subject to redistribution permissions.
4. Place all three CSVs in the notebook's working directory, or update the notebook's three `pd.read_csv(...)` paths to point to the `data/` folder.
5. Open `Machine_Learning_Classification.ipynb` in Jupyter and run cells in order.

**Runtime warning:** The notebook includes computationally intensive Optuna searches and nested cross-validation. Reproducing the full analysis may take substantial time.

## Skills demonstrated

Python · pandas · NumPy · scikit-learn · Optuna · Jupyter · classification · hyperparameter tuning · cross-validation · imbalanced learning · statistical evaluation · data visualisation

## Publication and reuse

Academic coursework by Lucas Bogaert, UCLouvain, 2026.

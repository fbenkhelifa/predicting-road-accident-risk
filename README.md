# Predicting Road Accident Risk (Kaggle Playground S5E10)

## Overview

This repository contains a complete machine learning workflow for the Kaggle competition **Playground Series S5E10 — Predicting Road Accident Risk**.

The notebook `submission5.ipynb` includes preprocessing, feature engineering, model tuning, ensembling, and final submission generation.

## Competition

- **Link:** https://www.kaggle.com/competitions/playground-series-s5e10
- **Task:** predict continuous `accident_risk` in range `[0, 1]`
- **Metric:** RMSE

## Approach Summary

1. Feature engineering with interaction and ratio features
2. One-hot encoding for categorical columns
3. Standard scaling of features
4. Model tuning with Optuna
5. Ensemble of LightGBM and XGBoost
6. K-fold validation with out-of-fold predictions

## Results (Local CV)

- LGBM OOF RMSE: `0.056081`
- XGB OOF RMSE: `0.056103`
- Optimized Ensemble OOF RMSE: `0.056066`

## Repository Structure

- `submission5.ipynb` — full end-to-end pipeline

## How to Run

1. Download competition data (`train.csv`, `test.csv`, `sample_submission.csv`).
2. Place files in your input directory and update paths in the notebook if needed.
3. Install required Python packages used in the notebook.
4. Run all cells in `submission5.ipynb`.

## Tech Stack

- Python
- pandas, numpy
- scikit-learn
- lightgbm
- xgboost
- optuna
- matplotlib, seaborn

## License

MIT License (see `LICENSE`).

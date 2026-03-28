# Predicting Road Accident Risk (Kaggle S5E10)

![Python](https://img.shields.io/badge/python-3.10%2B-3776AB?style=flat&logo=python&logoColor=white)
![Notebook](https://img.shields.io/badge/notebook-Jupyter-F37626?style=flat&logo=jupyter&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-supporting%20portfolio-1f6feb)

## What is this

This repository contains an end-to-end ML workflow for the Kaggle Playground Series S5E10 competition, where the goal is to predict a continuous road-accident risk score in `[0,1]`.

## Why it exists

This project demonstrates practical tabular ML iteration under competition constraints, including feature engineering, model optimization, ensembling, and submission generation.

## Approach

1. Feature engineering (interaction/ratio features)
2. Categorical encoding + scaling
3. Hyperparameter optimization with Optuna
4. LightGBM + XGBoost ensemble with OOF validation

## Installation

```bash
git clone https://github.com/fbenkhelifa/predicting-road-accident-risk.git
cd predicting-road-accident-risk
python -m venv .venv
# Windows PowerShell
.\.venv\Scripts\Activate.ps1
pip install pandas numpy scikit-learn lightgbm xgboost optuna matplotlib seaborn jupyter
# optional: install kaggle CLI and configure ~/.kaggle/kaggle.json
powershell -ExecutionPolicy Bypass -File scripts/download_data.ps1
```

## Usage

1. Download competition files into `data/raw/kaggle_s5e10/` using `scripts/download_data.ps1`
2. Open `notebooks/road-accident-risk.ipynb` and run cells in order

The notebook is configured for local paths under `../data/raw/kaggle_s5e10/`.

### Reported local CV results

- LGBM OOF RMSE: `0.056081`
- XGB OOF RMSE: `0.056103`
- Ensemble OOF RMSE: `0.056066`

## Project Structure

```text
predicting-road-accident-risk/
├── data/
│   ├── README.md
│   ├── raw/
│   │   └── kaggle_s5e10/
│   └── processed/
├── notebooks/
│   └── road-accident-risk.ipynb
├── reports/
│   └── .gitkeep
├── src/
│   └── .gitkeep
├── scripts/
│   └── download_data.ps1
├── README.md
├── .gitignore
└── LICENSE
```

## Limitations

- Competition notebook format (limited production modularization)
- Data files are expected under `data/raw/kaggle_s5e10/` and are not redistributed here
- No automated tests/CI currently

## Roadmap

1. Split notebook logic into reusable Python modules
2. Add reproducible config-driven training pipeline
3. Add model-card style experiment summaries
4. Publish inferencing script for batch scoring

## License

Licensed under MIT. See [`LICENSE`](./LICENSE).
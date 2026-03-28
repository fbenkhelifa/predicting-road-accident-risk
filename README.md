# Predicting Road Accident Risk (Kaggle S5E10)

![Python](https://img.shields.io/badge/python-3.10%2B-3776AB?style=flat&logo=python&logoColor=white)
![Notebook](https://img.shields.io/badge/notebook-Jupyter-F37626?style=flat&logo=jupyter&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-supporting%20portfolio-1f6feb)

## What is this

This repository contains an end-to-end ML workflow for Kaggle Playground Series S5E10 (continuous accident risk prediction).

## Why it exists

The project demonstrates practical tabular ML experimentation under competition constraints with reproducible optimization and ensemble validation.

## Architecture / Stack

- Python, pandas, numpy, scikit-learn
- LightGBM, XGBoost, Optuna
- Jupyter Notebook pipeline

## Installation

```bash
git clone https://github.com/fbenkhelifa/predicting-road-accident-risk.git
cd predicting-road-accident-risk
python -m venv .venv
# Windows PowerShell
.\.venv\Scripts\Activate.ps1
pip install pandas numpy scikit-learn lightgbm xgboost optuna matplotlib seaborn jupyter
```

## Usage

1. Download competition files: `train.csv`, `test.csv`, `sample_submission.csv`.
2. Update paths inside `submission5.ipynb`.
3. Run notebook cells in order.

### Reported local CV results

- LGBM OOF RMSE: `0.056081`
- XGB OOF RMSE: `0.056103`
- Ensemble OOF RMSE: `0.056066`

## Project structure

```text
predicting-road-accident-risk/
├── submission5.ipynb
├── README.md
├── .gitignore
├── LICENSE
└── MIGRATION_NOTE.md
```

## Limitations

- Notebook-first competition format
- External dataset files are not versioned in repository
- No automated CI/testing pipeline

## Roadmap

1. Refactor notebook logic into reusable modules.
2. Add config-driven training pipeline.
3. Add model-card experiment summaries.
4. Publish batch inference script.

## License

Licensed under MIT. See [`LICENSE`](./LICENSE).

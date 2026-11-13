# Project 1: Biological Sample Data Cleaning

## Project Overview

This project focuses on cleaning, inspecting, and exploring a biological dataset using R and the tidyverse package.

The analysis uses the Iris dataset, originally introduced by Ronald Fisher (1936), which contains 150 observations of three Iris species: Setosa, Versicolor, and Virginica.

The purpose of this exercise was to develop practical skills in biological data handling, data quality assessment, descriptive statistics, and data visualization.

## Objectives

- Import biological data and convert it into a tibble.
- Inspect dataset dimensions, structure, and observations.
- Examine species distribution.
- Identify missing values and duplicate observations.
- Filter observations belonging to a specific species.
- Arrange observations according to petal length.
- Calculate average biological measurements by species.
- Visualize differences and relationships between biological measurements.
- Export summary statistics and visualizations.

## Tools and Technologies

- **R** – Statistical programming and data analysis.
- **tidyverse** – Data manipulation, data import/export, and visualization.
- **ggplot2** – Biological data visualization.

## Analysis Workflow

### 1. Data Import and Inspection

- Loaded the built-in Iris dataset.
- Converted the dataset into a tibble using `as_tibble()`.
- Exported and re-imported the dataset as a CSV file.
- Examined the first six observations using `head()`.
- Inspected variable types and dataset structure using `glimpse()`.
- Determined the number of rows and columns using `dim()`.

### 2. Data Quality Assessment

- Examined the distribution of observations across Iris species using `count()`.
- Identified missing values using `is.na()` and `summarise()`.
- Identified duplicate observations using `duplicated()`.

### 3. Data Filtering and Organization

- Filtered observations belonging to the Setosa species using `filter()`.
- Arranged observations from largest to smallest petal length using `arrange()` and `desc()`.

### 4. Descriptive Statistics

Calculated average sepal length, sepal width, petal length, and petal width for each species using `group_by()` and `summarise()`.

The number of observations per species was also calculated using `n()`.

### 5. Data Visualization

Two visualizations were generated using ggplot2:

- **Boxplot:** Compared petal length distributions across the three Iris species.
- **Scatterplot:** Explored the relationship between petal length and petal width, with observations distinguished by species.

## Key Findings

- The dataset contains 150 observations and 5 variables.
- Three Iris species are represented, with 50 observations per species.
- No missing values were identified.
- One exact duplicate row was identified.
- Virginica has the greatest average petal length among the three species.
- Petal length and petal width demonstrate a positive relationship.

## Project Structure

```text
r-biological-data-cleaning/
├── data/
│   └── iris.csv
├── scripts/
│   └── data_cleaning.R
├── results/
│   ├── average_measurements.csv
│   ├── setosa_results.csv
│   ├── petal_length_boxplot.png
│   └── petal_relationship.png
├── README.md
└── .gitignore
```

## How to Run

1. Clone or download this repository.
2. Open the project folder in RStudio.
3. Install tidyverse if it is not already installed:

```r
install.packages("tidyverse")
```

4. Open `data_cleaning.R` inside the `scripts/` directory.
5. Run the script sequentially from top to bottom.

## Dataset Source

Fisher, R. A. (1936). The use of multiple measurements in taxonomic problems. *Annals of Eugenics*, 7(2), 179–188.

The Iris dataset is available through R's built-in `datasets` package.

## Author

Ali Al-Reda El-Zein

Master of Bioinformatics Student | University of Guelph
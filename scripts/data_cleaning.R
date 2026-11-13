# ==========================================
# Project 1: Biological Sample Data Cleaning
# Author: Ali Al-Reda El-Zein
# Description: Cleaning biological sample data
# ==========================================

# Load required package
library(tidyverse)

# Importing iris dataset
data(iris)

# Convert to tibble and export to CSV
iris_data <-  as_tibble(iris)

write_csv(iris_data, "../alielzein/R /data_cleaning/data/iris.csv")

# Reading data 

read_csv("../a")
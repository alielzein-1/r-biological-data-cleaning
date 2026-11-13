# Project 1: Biological Sample Data Cleaning ----
# Author: Ali Al-Reda El-Zein ----
# Description: Cleaning biological sample data ----


# 1. Load required package ----
library(tidyverse)

# 2. Importing iris dataset ----
data(iris)

# 3. Convert to tibble and export to CSV ----
iris_data <-  as_tibble(iris)

write_csv(iris_data, "../data/iris.csv")

# 4. Reading in data and inspecting ----
samples <- read_csv("../data/iris.csv")

samples

head(samples)

glimpse(samples)

dim(samples)

# 5. Examine species distribution and checking for missing values ----
count(samples, Species)

missing_values <- samples |>
  summarise(across(everything(), ~sum(is.na(.))))
missing_values

# 6. Checking for duplicates ----
duplicates <-  samples |>
  duplicated() |> sum()
duplicates
sum(duplicates)

# 7. Filtering Setosa Folwers ----
setosa <- samples |>
  filter(Species == "setosa") |>
  print()

# 8. Filtering largest petal ----
largest_petals <- samples |>
  arrange(desc(Petal.Length)) |> 
  print()

# 10. Calculating average measurements by species ----
avg_measures <- samples |>
  group_by(Species) |>
  summarise(
    average_sepal_length = mean(Sepal.Length),
    average_sepal_width = mean(Sepal.Width),
    average_petal_length = mean(Petal.Length),
    average_petal_width = mean(Petal.Width),
    sample_count = n(),
    .groups = "drop"
  ) |> print()

# 12. Data visualization with box plot ----
petal_plot <- ggplot(
  samples,
  aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  labs(
    title = "Petal Length Across Iris Species",
    x = "Iris Species",
    y = "Petal Length (cm)",
    fill = "Species"
  ) +
  theme_minimal()
print(petal_plot)

# 12. Data visualization of petal measurement relationships ----
petal_scatter <- ggplot(
  samples,
  aes(x = Petal.Length, y =Petal.Width, color = Species)
) +
  geom_point(size = 2.5) +
  labs(
    title = "Relationship Between Petal Length and Width",
    x = "Petal Length (cm)",
    y = "Petal Width (cm)",
    color = "Species"
  ) +
  theme_minimal()
print(petal_scatter)

# 13. Export results ----
write_csv(avg_measures, "../results/average_measurements")

write_csv(setosa, "../results/setosa_results")

ggsave(
  "../results/petal_length_boxplot.png",
  plot = petal_plot,
  width = 8,
  height = 6
)

ggsave(
  "../results/petal_relationship.png",
  plot = petal_scatter,
  width = 8,
  height = 6
)

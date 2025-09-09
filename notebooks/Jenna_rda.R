# Load libraries
install.packages("readxl")
library(readxl)

install.packages("dplyr")
library(dplyr)

install.packages("ggplot2")
library(ggplot2)

# Load raw OWID sheet
raw_data <- read_excel("data/data.xlsx", sheet = "freshwater-withdrawals-as-a-sha")

# Clean a subset manually
subset_data <- raw_data %>%
  filter(Entity %in% c("Australia", "United States", "Brazil", "Spain", "China", "Nigeria")) %>%
  select(Country = Entity, Year, water_stress = 4)   # 4th column is water stress

# Check the data
head(subset_data)

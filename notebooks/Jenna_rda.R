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

# Summary statistics for water_stress
mean_stress <- mean(subset_data$water_stress, na.rm = TRUE)
median_stress <- median(subset_data$water_stress, na.rm = TRUE)
sd_stress <- sd(subset_data$water_stress, na.rm = TRUE)

mean_stress # 22.54
median_stress # 18.1
sd_stress # 17.58

# Bar plot of average water stress by country
subset_data %>%
  group_by(Country) %>%
  summarise(avg_stress = mean(water_stress, na.rm = TRUE)) %>%
  ggplot(aes(x = Country, y = avg_stress, fill = Country)) +
  geom_col() +
  labs(title = "Average Water Stress by Country",
       y = "Water Stress (%)",
       x = "Country") +
  theme_minimal()

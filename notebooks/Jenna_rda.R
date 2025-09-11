# Load libraries
install.packages("readxl")
library(readxl)

install.packages("dplyr")
library(dplyr)

install.packages("ggplot2")
library(ggplot2)

# Load the clean_data sheet directly
subset_data <- read_excel("data/data.xlsx", sheet = "clean_data")

# Check the data
head(subset_data)

# Summary statistics for water_stress
mean_stress <- mean(subset_data$Water_stress, na.rm = TRUE)
median_stress <- median(subset_data$Water_stress, na.rm = TRUE)
sd_stress <- sd(subset_data$Water_stress, na.rm = TRUE)

mean_stress #22.54
median_stress #18.1
sd_stress #17.78

# Bar plot of average water stress by country
subset_data %>%
  group_by(Country) %>%
  summarise(avg_stress = mean(Water_stress, na.rm = TRUE)) %>%
  ggplot(aes(x = Country, y = avg_stress, fill = Country)) +
  geom_col() +
  labs(title = "Average Water Stress by Country",
       y = "Water Stress (%)",
       x = "Country") +
  theme_minimal()

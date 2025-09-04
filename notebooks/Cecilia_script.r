#Import dataset
library(readxl)
data <- read_excel("C:/Users/q4q/repos/Cecilia_Jenna_DSE511/data/data.xlsx", sheet = "freshwater-withdrawals-as-a-sha")
View(data)
str(data)

#rename 1st column to Country
names(data)[names(data) == "Entity"] <- "Country" 

#rename 4th column to Water_stress
names(data)[names(data) == "6.4.2 - Level of water stress: freshwater withdrawal as a proportion of available freshwater resources (%) - ER_H2O_STRESS - No breakdown"] <- "Water_stress" 

#look for missing values by column
colSums(is.na(data))
#91 NAs under the column Code
#call out NAs by row
na_rows <- which(is.na(data$Code))
data[na_rows, ]
#these all correspond to regions of several countries
#We won't consider these rows for our homework

#Instead, I'll select a subset of data which will be one country by continent
#We'll use dplyr package (must have it installed first)
library(dplyr)
clean_data <- data %>%
  filter(Country %in% c("United States", "Australia", "China", "Brazil", "Spain", "Nigeria"))
View(clean_data)

#Export this new data to Excel
#We'll use openxlsx package (must have it installed first)
library(openxlsx)
# Select file path
file_path <- "C:/Users/q4q/repos/Cecilia_Jenna_DSE511/data/data.xlsx"

# Load existing workbook 
wb <- loadWorkbook(file_path)

# Add new sheet with clean data in a new tab
addWorksheet(wb, "clean_data")
writeData(wb, sheet = "clean_data", clean_data)

# Save workbook (keeps other sheets intact)
saveWorkbook(wb, file_path, overwrite = TRUE)


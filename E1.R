# download the packages and the data 
# the data is a built-in R dataset
library(ggplot2)
library(dplyr)
data("economics")

# add a new column to show the unemployment_rate
sample_data <- economics
transforming <- function(sample_data) {
  mutated_data <- sample_data %>%
    mutate(uemp_rate = round((unemploy/pop)*100,1)) %>%       # use percentage to represent, and retain one decimal place
  return(mutated_data)
}
result_data <- transforming(sample_data)
print(result_data)

# pce: Personal consumption expenditures: the total spending by consumers
# pop: The total population of the United States at the given time points
# psavert: The personal savings rate, expressed as a percentage
# uempmed: The median duration of unemployment: the median length of time that individuals are unemployed
# unemploy: The number of unemployed individuals in the United States at the specified time
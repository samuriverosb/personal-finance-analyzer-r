library(dplyr)

transactions_df <- read.csv("transactions.csv")

calculate_category_total <- function(data, selected_category) {

  filtered_data <- data[data$category == selected_category, ]

  total <- sum(filtered_data$amount)

  return(total)
}

calculate_average_spending <- function(data) {

  average <- mean(data$amount)

  return(average)
}

food_total <- calculate_category_total(transactions_df, "Food")

gaming_total <- calculate_category_total(transactions_df, "Gaming")

print(paste("Food Total:", food_total))
print(paste("Gaming Total:", gaming_total))
print(paste("Average Spending:", calculate_average_spending(transactions_df)))
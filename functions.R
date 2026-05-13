# Load required libraries to avoid depending on main.R loading dplyr
library(dplyr)

# Calculates the total spending for a selected category
calculate_category_total <- function(data, selected_category) {
  filtered_data <- data[data$category == selected_category, ]

  total <- sum(filtered_data$amount)

  return(total)
}

# Loops through each unique category and prints the total spending for that category
loop_through_categories <- function(data) {
  categories <- unique(data$category)

  for (category in categories) {
    total <- calculate_category_total(data, category)

    cat(category, "Total: $", total, "\n")
  }
}

# Calculates the average spending across all transactions
calculate_average_spending <- function(data) {
  average <- mean(data$amount)

  return(average)
}

# Counts the number of transactions that exceed a specified threshold
count_high_expenses <- function(data, threshold) {
  high_expenses <- data[data$amount > threshold, ]

  count <- nrow(high_expenses)

  return(count)
}

# Counts the total number of transactions in the dataset
total_transaction_count <- function(data) {
  count <- nrow(data)

  return(count)
}

# Finds the maximum transaction amount in the dataset
maximum_transaction_amount <- function(data) {
  max_amount <- max(data$amount)

  return(max_amount)
}

# Determines the category with the highest total spending
most_spent_category <- function(data) {
  category_totals <- aggregate(amount ~ category, data = data, sum)

  most_spent <- category_totals[which.max(category_totals$amount), ]

  return(most_spent)
}

# Categorizes transactions based on their amount into spending levels
categorize_spending <- function(data) {
  categorized_data <- data %>%
    mutate(
      spending_level = case_when(
        amount > 200 ~ "Extreme",
        amount > 100 ~ "High",
        amount > 50 ~ "Medium",
        TRUE ~ "Low"
      )
    )

  return(categorized_data)
}

# Creates a summary grouped by category
summarize_spending_levels <- function(data) {

  spending_summary <- data %>%
    group_by(category) %>%
    summarize(
      transaction_count = n(),
      total_amount = sum(amount),
      highest_spending_level = case_when(
        sum(amount) > 1000 ~ "Extreme",
        sum(amount) > 500 ~ "High",
        sum(amount) > 300 ~ "Medium",
        TRUE ~ "Low"
      ),
      .groups = "drop"
    ) %>%
    arrange(desc(total_amount))

  return(spending_summary)
}

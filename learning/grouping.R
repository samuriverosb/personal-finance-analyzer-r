library(dplyr)

transactions_df <- read.csv("transactions.csv")

category_summary <- transactions_df %>%
  group_by(category) %>%
  summarize(
    total_spending = sum(amount),
    average_spending = mean(amount),
    max_spending = max(amount),
    transaction_count = n()
  )

print(category_summary)
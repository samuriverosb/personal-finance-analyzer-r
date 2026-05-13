# =========================================
# Personal Finance Analyzer
# Author: Samuel Riveros
# Description:
# This program reads transaction data from
# a CSV file and analyzes spending habits.
# =========================================

# Load required libraries
library(dplyr)

# Import custom functions
source("functions.R")

# Load transaction data from CSV
transactions_df <- read.csv("transactions.csv")

transactions_df <- categorize_spending(transactions_df)

cat("==== Personal Finance Analyzer ====\n\n")

average_spending <- calculate_average_spending(transactions_df)

high_expense_count <- count_high_expenses(transactions_df, 100)

transaction_count <- total_transaction_count(transactions_df)

max_transaction <- maximum_transaction_amount(transactions_df)

top_category <- most_spent_category(transactions_df)

spending_summary <- summarize_spending_levels(transactions_df)

# Display final spending report
loop_through_categories(transactions_df)
cat("Average Spending: $", round(average_spending, 2), "\n")
cat("High Expenses (>$100): ", high_expense_count, "\n")
cat("Total Transactions: ", transaction_count, "\n")
cat("Maximum Transaction Amount: $", max_transaction, "\n")
cat("Most Spent Category: ", top_category$category, " ($", top_category$amount, ")\n")

cat("\n==== Spending Level Summary ====\n")

print(spending_summary, row.names = FALSE)

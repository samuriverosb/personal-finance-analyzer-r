library(dplyr)

transactions_df <- read.csv("transactions.csv")

transactions_df <- transactions_df %>%
  mutate(
    spending_level = case_when(
      amount > 200 ~ "Extremely High",
      amount > 150 ~ "Very High",
      amount > 50 ~ "Medium",
      TRUE ~ "Low"
    )
  )

print(transactions_df)
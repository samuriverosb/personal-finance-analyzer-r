transactions_df <- data.frame(
  date = c("2026-05-01", "2026-05-02", "2026-05-03"),
  category = c("Food", "Gaming", "Transport"),
  amount = c(25.50, 60.00, 15.75)
)

print(transactions_df)

total_spending <- sum(transactions_df$amount)

print(total_spending)
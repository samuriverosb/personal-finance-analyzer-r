transactions_df <- read.csv("transactions.csv")

print(transactions_df)

str(transactions_df)

print(transactions_df$category)

print(sum(transactions_df$amount))

print(mean(transactions_df$amount))
transactions_df <- read.csv("transactions.csv")

# Show only Food transactions
food_transactions <- transactions_df[transactions_df$category == "Food", ]

print(food_transactions)

# High expenses
high_expenses <- transactions_df[transactions_df$amount > 100, ]

print(high_expenses)

food_total <- sum(food_transactions$amount)

print(paste("Food total:", food_total))

high_total <- sum(high_expenses$amount)

print(paste("High expense total:", high_total))

gaming_transactions <- transactions_df[transactions_df$category == "Gaming", ]

gaming_total <- sum(gaming_transactions$amount)

print(paste("Gaming total:", gaming_total))
# A vector of transaction amounts
transactions <- c(45.99, 120.50, 15.25, 89.00, 220.10)

print(transactions)

# Accessing individual items
print(transactions[1])
print(transactions[3])

# Total spending
total_spending <- sum(transactions)

print(total_spending)

# Average spending
average_spending <- mean(transactions)

print(average_spending)

print(length(transactions))
print(max(transactions))
print(min(transactions))
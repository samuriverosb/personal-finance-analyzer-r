transactions <- c(45.99, 120.50, 15.25, 89.00, 220.10)

total_high <- 0

for (amount in transactions) {

  print(amount)

  if (amount > 100) {
    print("High expense")
    total_high <- total_high + 1
  } else {
    print("Normal expense")
  }

}
print(paste("Total high expenses:", total_high))
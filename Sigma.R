# Find the sum of numbers 1.....n

# Read User input
n <- readline("Enter a natural number: ")

# Convert into numeric
n <- as.numeric(n)

# Check is user input is valid 
if (is.na(n)) {
  print("Error Message")
} else {
  
# Sum number up to n
  sigma <- sum(1:n)
  
# Display the results
  print(paste("The result is", sigma))
  }

# Optional Method

#sigma <- sum(seq(to = n))
#sigma <- ((n + 1) = n)/2



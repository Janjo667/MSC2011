# # Checking if user input number is narcissistic
# 
# # Read User input
# n <- readline("Enter a 3 digit positive number: ")
# 
# # Convert into numeric
# n <- as.numeric(n)
# 
# # Check is user input is valid (numeric, positive and 3 digits)
# if (is.na(n) || n < 0 || nchar(n) != 3) {
#   print("Invalid entry: terminating program")
# } else {
#   
#   # Separate 3 digit input to individual ones
#   d <- as.numeric(strsplit(as.character(n), "")[[1]])
#   
#   #Sub-setting separated digits from n  
#   x <- d[[1]]
#   y <- d[[2]]
#   z <- d[[3]]
# 
#   # calculating if n is a Narcissistic number 
#   e <- x^3 + y^3 + z^3
#   
# }
#   # If e is the same as what was inputted as n - its a narcissist number
# if (e == n) {
#   # Display the results
#   print(paste(n, "is a narcissistic number!"))
# } else {
#   print(paste(n, "is not a narcissistic number :("))
#   
# }

##################

# Use For command 

# Checking if user input number is narcissistic

# Read User input
n <- readline("Enter a 3 digit positive number: ")

# Check is user input is valid (numeric, positive and 3 digits)
d <- as.numeric(strsplit(n, "")[[1]])

d <- c(2,4,7)
# Using Loops
sum <- 0

for(i in d) {
  sum <- sum + i^3
}
if (e == n) {
  # Display the results
  print(paste(n, "is a narcissistic number!"))
} else {
  print(paste(n, "is not a narcissistic number :("))
  
}

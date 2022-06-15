# Checking if user input number is narcissistic

# Read User input
n <- readline("Enter a 3 digit positive number: ")

# Convert into numeric
n <- as.numeric(n)

# Check is user input is valid (numeric, positive and 3 digits)
if (is.na(n) || n < 0 || nchar(n) != 3) { # cool way to exclude entries more than 3 characters!, I did num > 999 to achieve a similar result
  print("Invalid entry: terminating program")
} else {
  
  # Separate 3 digit input to individual ones
  d <- as.numeric(strsplit(as.character(n), "")[[1]])
  
  #Sub-setting separated digits from n  
  x <- d[[1]]
  y <- d[[2]]
  z <- d[[3]]

  # calculating if n is a Narcissistic number 
  e <- x^3 + y^3 + z^3
  
} # I put my closing bracket (for first else) at the very end of the code, not sure if it makes a difference

  # If e is the same as what was inputted as n - its a narcissist number
if (e == n) {
  # Display the results
  print(paste(n, "is a narcissistic number!"))
} else {
  print(paste(n, "is not a narcissistic number!"))  # erased " :(" from end of print to make it look cleaner
  
} # Great job!

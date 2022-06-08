# Leap Year Calculation

# Get user input
year <- readline("Please enter the year: ")

# Convert the user response to numeric
year <- as.numeric(year)

#Check if input is valid
if (is.na(year)) {
  print("Invalid entry")
} else {
  
# Calculate if leap year
  
## If year mod 4 = 0 then leap year 
  if (year %% 100 == 0) {
# year is a century
    if (year %% 400 == 0) {
      print("Leap year")
    } else {
      print("Not a leap year")
    }
  } else {
#year is not a century, should be divisible by 4
    if (year %% 4 == 0) {
      print("Leap Year")
    } else {
      print("Not a leap year")
    }
  } # If else is century
  } # If else for valid entry


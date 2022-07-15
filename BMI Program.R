# BMI Calculation
# 2 inputs <- weight and height

# Get user input for weight
weight <- readline("Please enter your weigth in kg: ")

# Convert the user response to numeric
weight <- as.numeric(weight)

# Check if weight input is valid
if (is.na(weight) || weight < 0) {
  print("Invalid entry: please enter a postive integer")
  }

# Get user input for height in cm
height <- readline("Please enter your height in cm: ")

# Convert the user response to numeric
height <- as.numeric(height)

# Check if height input is valid
if (is.na(height) || height < 0) {
  print("Invalid entry: please enter a positive integer")
} 

# Calculate BMI

bmi <- weight/((height/100)^2)  

#Check if input is valid
if (is.na(bmi)) {
  print("Invalid entry")
  } else {
  
  # Calculate if leap year
  
  ## If year mod 4 = 0 then leap year 
  if (bmi < 18.5) {
    print("Underweight")
  } else if (bmi <= 24.9) {
    print("You are in the healthy weight range")
  } else if (bmi <= 29.9) {
    print("You are in the overweight range")
  } else if (bmi <= 39.9) {
    print("You are in the obese range")
  } else {
    print("Sorry you are not categorized")
  }

}
   





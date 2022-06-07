# If the user age is less than 21, give them lemonade. If above 21 offer them beer.
userage <- 150
if (userage < 21) {print("Here's your lemonade")
} else 
    {print("Here's your beer")}


#Speed Example

speed <- 100

# if speed is less than 40 - slow
# between 40-70 - residential
# greater than 120 - ticket
# else on highway

if(speed < 40) {print("Slow")
} else if(speed <= 70) {
  print("Residential")
} else if(speed <= 120) {
  print("Highway")
} else {
  print("Ticket")}



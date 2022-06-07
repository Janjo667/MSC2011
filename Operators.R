# Exercise 1_4

# Mod is the remainder of a division
5 %% 2

# Integer division (no decimal points)
5 %/% 2

# == checks for equality 
5 == 5
5 == 6
5 == "s"
NA == 3

# Logical operators = &
T & T
F & T
F & F

# OR
T | T
F | T
F | T
F | F

# : Colon operator
nums <- 1:5

7 %in% nums
2 %in% nums

# %*% -> multiplies 2 matriceis together if they are conformable

library(magrittr)
# %>% Pipes an object forward into a function or call expression 
1:5 %>% sqrt()

# Long chain of calculations that I want to make
a <- 1:5
b <- sqrt(a)
c <- mean(b)
c

# Using %>% from mgrittr package can reduce the clutter in memory
1:5 %>% 
  sqrt() %>%
  mean()
 



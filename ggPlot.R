## Data visualization R script
# Graphs/Network: Show connection between the points 
# Facets: how you group the data, ex: 2 seperate plots for male and female

library(ggplot2)

mpg
ggplot(data = mpg)

# Cannot plot anything because you need 4 components:
# Data, aesthetics (what do you want for x and y), how do you want to show the data 
# What (data), How (visualization of graphs)
# How do you want to show the data is included by literally adding them:
# Coloring the points according to the data = aesthetics
## Everything put into aesthetics puts sets up those conditions as default for the rest.
# Coloring the data totally = geom_point()
ggplot(data = mpg, aes(x = displ, y = cyl)) + geom_point()


# GGPLOT2 W/ IRIS DATASET #
ggplot(iris, aes(x = Sepal.Length, 
                 y = Petal.Length)) + geom_point()

# Bunch of data points in the bottom don't make sense, so we want to see if this 
# is related to the species I am using.
# col option within aes -> will set the default only for the points becasue its within the geom_point.
ggplot(iris, aes(x = Sepal.Length, 
                 y = Petal.Length)) +
  geom_point(aes(col=Species))

# The linear regression between the petal length and sepal length is different for every species,
# we wouldn't have knowin unless we experimented,

# Add smoother line - its not defaulted by the previous aes within the geom_point
# If you add the color within the aes(), it will include the color ref. in the legend as well.
ggplot(iris, aes(x = Sepal.Length, 
                 y = Petal.Length)) +
  geom_point(aes(col=Species)) +
  geom_smooth(col = "purple")

# Labelled smoother line
ggplot(iris, aes(x = Sepal.Length, 
                 y = Petal.Length)) +
  geom_point(aes(col=Species)) +
  geom_smooth(aes(col = "Smoother Line"))

# Make smoother line species specific and calculated by linear regression
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length))+
  geom_point(aes(col=Species))+
  geom_smooth(aes(col=Species), method="lm")

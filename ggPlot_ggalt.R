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

# Make color by species default for all layers - reduces redundancy 
#of the aes(col = species code from previous examples)
g <- ggplot(iris, aes(x = Sepal.Length, 
                 y = Petal.Length,
                 col=Species)) +
  geom_point()+
  geom_smooth(method="lm")
View(g) # Shows you info about the layers etc.
g

# Add scale details -> lets change scale colors for ex. and go by a theme
g <- g + scale_color_ordinal()
g

# Lets make each species a different plot -> lets add some facets.
g <- g + facet_wrap(~Species, nrow = 3)
g

# Changing the coordinate system - this corrdinate helps you gage the angle of the slope
g <- g + coord_polar()
g

# Change the theme for the plots 
# Not the best theme, but experiment with different themes and see what works best 4 u
g <- g + theme_dark()
g

# Save the plot -> autmoatically saves the the graph last plotted (latest g)
ggsave("Iris_plot.png", width=6, height=10, 
       units="cm", dpi="screen") #dpi <- resolution (set by "screen" resolution)

# To specify which plot
ggsave("Iris_plot.png", width=6, height=10, 
       units="cm", dpi="screen", plot = g) #dpi <- resolution (set by "screen" resolution)

# better resolution for mac 
ggsave("Iris_plot.png", width=6, height=10, 
       units="cm", dpi="retina")

# Basic plots with different geoms.
ggplot(iris, aes(x = Sepal.Length, 
                 y = Petal.Length)) +
  geom_area()

# ggplot2 extras

ggplot(mpg, aes(cty, hwy)) + 
  geom_point() +   
  labs(y="hwy",
       x="cty",
       title="Scatterplot with overlapping points")

# Same plot, jittered points - makes all points visible
ggplot(mpg, aes(cty, hwy)) + 
  geom_jitter(width = .5, size=1) +   
  labs(y="hwy",
       x="cty",
       title="Scatterplot with overlapping points")

# Circles let you convey additional info <- most common values in my dataset
# 3 pieces of info: x axis, y axis and counts
g <- ggplot(mpg, aes(cty, hwy)) +
  geom_count(col="tomato3", show.legend=F) +
  labs(y="hwy", 
       x="cty", 
       title="Counts Plot")
g

# bubbles let you convey 4 pieces of information
# x + y + count + categorical variable
ggplot(mpg, aes(displ, cty)) +
  geom_jitter(aes(col=manufacturer, size=hwy)) +
  labs(title="Bubble chart")


install.packages("ggalt")
library(ggalt)

# Encircle a scatter plot 

data("midwest", package = "ggplot2")

library(ggplot2)
library(ggalt)

# define points to circle
mw_mark <- midwest[midwest$poptotal > 350000 &  
                     midwest$poptotal <= 500000 &  
                     midwest$area > 0.01 &   
                     midwest$area < 0.1, ]
# Plot
ggplot(midwest, aes(x=area, y=poptotal)) +
  # draw points  
  geom_point(aes(col=state, size=popdensity)) + 
  # encircle  - the points within a scatter plot.
  geom_encircle(aes(x=area, y=poptotal),   
                data=mw_mark, 
                color="red",  
                size=2,  
                expand=0.08) +   
  labs(y="Population",   
       x="Area",   
       title="Scatterplot + Encircle")







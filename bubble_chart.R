#Garrett Heath
#bubble chart tutorial, use as reference:  https://www.r-graph-gallery.com/bubble-chart.html
# also use this site as reference for titles :  http://www.sthda.com/english/wiki/ggplot2-title-main-axis-and-legend-titles
# Libraries
library(ggplot2)
library(dplyr)
install.packages("gapminder")
library(gapminder)

#---------------------------------------------------------
# The dataset is provided in the gapminder library
#this part of the tutorial is using the gapminder dataset
data <- gapminder %>% filter(year=="2007") %>% dplyr::select(-year)

# Most basic bubble plot
ggplot(data, aes(x=gdpPercap, y=lifeExp, size = pop)) + geom_point(alpha=0.7)
#----------------------------------------------------------
housing <- read.csv("data/housing.csv")
hData <- housing %>% filter(ocean_proximity=="INLAND") %>% filter(median_house_value < 55000)
ggplot(hData, aes(x=housing_median_age, y=total_rooms, size = population)) + geom_point(alpha=0.5) + ggtitle("tutorial bubble") + xlab("median housing age") + ylab("total number of rooms")

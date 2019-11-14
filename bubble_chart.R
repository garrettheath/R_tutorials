#Garrett Heath
#bubble chart tutorial

# Libraries
library(ggplot2)
library(dplyr)
install.packages("gapminder")

#---------------------------------------------------------
# The dataset is provided in the gapminder library
#this part of the tutorial is using the gapminder dataset
library(gapminder)
data <- gapminder %>% filter(year=="2007") %>% dplyr::select(-year)

# Most basic bubble plot
ggplot(data, aes(x=gdpPercap, y=lifeExp, size = pop)) + geom_point(alpha=0.7)
#----------------------------------------------------------
housing <- read_csv("data/housing.csv")
hData <- housing %>% filter(ocean_proximity=="INLAND") %>% filter(median_house_value < 55000)
ggplot(hData, aes(x=housing_median_age, y=total_rooms, size = population)) + geom_point(alpha=0.5)

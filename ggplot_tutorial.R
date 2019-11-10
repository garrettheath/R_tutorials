#set working directory
setwd("~/Documents/R/R_Data/tutorial")

library(ggplot2)

#import the housing data
data <- read.csv("./data/housing.csv")

head(data)
ggplot(data, aes(housing_median_age, total_homes) + geom_point())

       
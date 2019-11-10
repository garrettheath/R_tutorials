#set working directory
setwd("~/Documents/R/R_Data/R_tutorials")

install.packages("ggplot2")
install.packages("tidyverse")
library(ggplot2)

#import the housing data
data <- read.csv("./data/housing.csv")

head(data)
ggplot(data, aes(housing_median_age, total_rooms))+ geom_point()

       
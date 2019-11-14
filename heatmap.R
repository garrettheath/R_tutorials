#Garrett Heath
#Heatmap tutorial

d <- as.matrix(mtcars)
heatmap(d, scale="column")
d
mtcars$mpg
head(mtcars)
head(d)
datatest <- read.csv("~/Documents/R/R_data/datatest.csv", header=FALSE)
datatest
heatmap(datatest)
d1 <- as.matrix(datatest)
heatmap(datatest)

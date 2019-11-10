#use this site:http://t-redactyl.io/blog/2016/05/creating-plots-in-r-using-ggplot2-part-11-linear-regression-plots.html

#set as working directory
setwd("~/Documents/R/R_Data/tutorial")

library(ggplot2)

#read in data
datafile <- read.csv("./data/airquality.csv")

#filter out all rows with bad data using the "complete cases" command
datafile_ <- datafile[complete.cases(datafile),]
datafile_ 

#define the X and Y for the regression
Y <- datafile_[,"Ozone"]
X <- datafile_[, "Solar.R"]
model <- lm(Y~X)
model

#summary of model
summary(model)

#what are the residuals
model$residuals

#dataframe of the X and Y values
XY <- cbind(X,Y)
XY <- as.data.frame(XY)

#plot the dataframe using ggplot
ggplot(XY, aes(x=X, y=Y)) + geom_point() + geom_smooth(method=lm) + ggtitle("Example Linear Regression")

#Garrett Heath
# using the QuantLib package: https://rdrr.io/cran/RQuantLib/man/Calendars.html
# work with dates in R: https://www.dummies.com/programming/r/how-to-work-with-dates-in-r/
# lubridate:  https://lubridate.tidyverse.org/

#set the working directory
setwd("~/Documents/R/R_Data/tutorial")

install.packages("RQuantLib")
install.packages("bizdays")
library(RQuantLib)
library(dplyr)
library(bizdays)

# create dates for calendar math
s.date <- as.Date("2020-01-14")
f.date <- as.Date("2020-04-03")

# perform simple difference to determine days between the dates
f.date - s.date

#use the bizdays function to calculate the same difference
bizdays(s.date, f.date, bizdays.options$get("default.calendar"))

#create a sequence of dates where incrementing the date by one day
dates <- seq(from=as.Date(s.date), to=as.Date(f.date), by=1)

#create a vector of whether of not the dates according to the calendar are business days or not
bisDayOrNot <- isBusinessDay("UnitedStates", dates)

#determine the day of week:  
weekdays(as.POSIXct(dates), abbreviate = T)
weekdays(dates)

#create a dataframe of the dates, the day of the week, and a column showing whether the date is a business day
table <- cbind.data.frame(dates, weekdays(dates), bisDayOrNot)
table

#use the filter command from dplyr and then count to count the number of business days in the table
count(filter(table, bisDayOrNot==TRUE))


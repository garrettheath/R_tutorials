#cleaning and manipulating data with the dplyr package

#load the package
library(dplyr)
library(githubinstall)


# set the working directory
setwd("~/Documents/R/R_Data/tutorial")

#download the chicago datafile at: https://www.youtube.com/redirect?stzid=UghGUk9zp5ctDXgCoAEC&event=comments&q=http%3A%2F%2Fgithub.com%2FDataScienceSpecialization%2Fcourses%2Fblob%2Fmaster%2F03_GettingData%2Fdplyr%2Fchicago.rds&redir_token=ksCYpIVyDfywfyPh4E9oSFvw0pd8MTU3MTc5NjgyNEAxNTcxNzEwNDI0
chicago<- readRDS("./data/chicago.rds")

#get the dimensions of the dataframe
dim(chicago)

#obtain information about the package
str(chicago)

#what are the names of the columns
names(chicago)

#use the select verb to pick the header rows that are specified or within a range; access the sets of the columns
head(select(chicago, city:dptp))
head(select(chicago, -(city:dptp)))

#filter function to filter out data where pm25tmean2 is less than 30
chic.f <- filter(chicago, pm25tmean2 >30)
head(chic.f)  

#add another condition to the filter
chic.f <- filter(chicago, pm25tmean2 >30 & tmpd > 80)
head(chic.f)

#look and the function arrange, the first example with arrange the data set using the date
chicago <- arrange(chicago, date)
head(chicago)

#now use the tail function to look at the bottom of the data set
tail(chicago)

#now arrange using the desc order
chicago <- arrange(chicago, desc(date))
head(chicago)
tail(chicago)

#rename using the rename function
chicago <- rename(chicago, pm25 = pm25tmean2, dewpoint = dptp)
head(chicago)

chicago <- mutate(chicago, pm25detrend = pm25-mean(pm25, na.rm=TRUE))
head(chicago)














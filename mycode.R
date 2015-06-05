myfunction <- function(){
	x <- rnorm(100)
	mean(x)
}
second <- function(x){
	x * rnorm(length(x))
}
#comment how to create a data frame from a csv file
mydata = read.csv("hw1_data.csv")

#extract first 2 rows from data frame
mydata[1:2,]

#how many rows in data frame
nrow(mydata)

#extract last 2 rows from data frame
mydata[152:153,]
#or
tail(mydata,2)

#value of Ozone column in 47th row
mydata[47,1]

#how many missing values in Ozone column of data frame
sum(is.na(mydata$Ozone))

#mean of Ozone column, exclude NA
mean(mydata$Ozone, na.rm = TRUE)

#mean of Solar.R from subset of rows in data frame where Ozone values > 31 and Temp values > 90
subdata <- subset(mydata, Ozone > 31 & Temp > 90)
mean(subdata$Solar.R)

#mean of Temp when Month == 6
subdata <- subset(mydata, Month == 6)
mean(subdata$Temp, na.rm = TRUE)

#max ozone value in May
subdata <- subset(mydata, Month == 5)
max(subdata$Ozone, na.rm = TRUE)



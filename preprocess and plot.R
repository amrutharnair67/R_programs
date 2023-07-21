View(airquality)
air<-airquality
mean(air$Solar.R)
mean(air$Solar.R,na.rm=TRUE)
#missing values
air$Solar.R <- ifelse(is.na(air$Solar.R),mean(air$Solar.R,na.rm=TRUE),air$Solar.R)
air

mean(air$Ozone,na.rm=TRUE)
air$Ozone <- ifelse(is.na(air$Ozone),mean(air$Ozone,na.rm=TRUE),air$Ozone)
air
#transforming
air$Month<-month.name[air$Month]
air
#to add new column
library(dplyr)

air$Danger <- ifelse(air$Solar.R >= 200, "true", "fail")
air

#convert into factor
air$Month <- factor(air$Month)
air

#training and testing dataset

library(caTools)
set.seed(123)
split=sample.split(air,SplitRatio = 0.8)
air

split

train_set<-subset(air,split==TRUE)
test_set<-subset(air,split==FALSE)

#scale
test_set<-scale(test_set$Solar.R)
test_set
  

#ggplot2 package

library(ggplot2)
# Sample data
x <- c(15, 20, 60, 5)
y <- c("A", "B", "C", "D")


# Sample data
x <- c(15, 20, 60, 5)
y <- c("A", "B", "C", "D")

# Create a bar chart
barplot(x, names.arg = y, col = "skyblue", main = "Bar Chart", xlab = "Categories", ylab = "Values")


# Create the pie chart
pie(x, labels = y, col = rainbow(length(x)), main = "Pie Chart")

# Add a legend outside the pie chart
legend("bottomright", legend = y, fill = rainbow(length(x)))



mydata<-read.csv("C:/r/car.csv")
mydata
hist(mydata$city_mpg,col="yellowgreen",xlab="city mileage")
# Load the dataset
mydata <- read.csv("C:/r/car.csv")

# Create a scatter plot
plot(mydata$city_mpg, mydata$highway_mpg, col = "blue", pch = 16, xlab = "City MPG", ylab = "Highway MPG", main = "Scatter Plot of City MPG vs. Highway MPG")

                                                        

# Load the dataset
mydata <- read.csv("C:/r/car.csv")

# Create a line plot
plot(mydata$city_mpg, type = "l", col = "blue", xlab = "City MPG", ylab = "Highway MPG", main = "Line Plot of City MPG vs. Highway MPG")
lines(mydata$highway_mpg, col = "red")
legend("topright", legend = c("City MPG", "Highway MPG"), col = c("blue", "red"), lty = 1)



# Load the dataset
mydata <- read.csv("C:/r/car.csv")

# Create a boxplot
boxplot(mydata$city_mpg, mydata$highway_mpg, names = c("City MPG", "Highway MPG"), col = c("blue", "red"), xlab = "Categories", ylab = "Miles per Gallon", main = "Boxplot of City MPG and Highway MPG")


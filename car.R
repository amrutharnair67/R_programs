library(ggplot2)

# Load the data from the CSV file
mydata <- read.csv("D:/R prgrms/car.csv")

# Basic histogram
ggplot(data = mydata, aes(x = price)) + geom_histogram()

# Histogram with customized colors and bin size
ggplot(data = mydata, aes(x = price)) +
  geom_histogram(fill = "orange", color = "green", bins = 10)

ggplot(data = mydata, aes(x = price, fill = fuel_type)) +
  geom_histogram(color = "green", bins = 10)

#barplot bivariate categorical conditions
ggplot(data = mydata, aes(x = body_style,y=price, fill = fuel_type)) +
  geom_col()

ggplot(data = mydata, aes(x = body_style,y=price, fill = fuel_type)) +
  geom_bar(stat="identity")


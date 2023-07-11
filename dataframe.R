library(dplyr)
mydata<-data.frame(roll=c(1:5),name=c("salla","joel","pooj","siya","amm"),
                   gender=c("f","m","f","m","f"),age=c(22,21,22,22,21),
                   height=c(170,176,156,167,175),weight=c(50,55,60,53,55))
mydata

select(mydata,name,height)
filter(mydata,age>21)
filter(mydata,height>165&age<22)
select(filter(mydata,height>165&age<22),name)

mydata %>% filter(height>165&age<22)%>%select(name)

mutate(mydata,hwratio=height/weight)

arrange(mydata,desc(age))

mydata %>% group_by(gender) %>% count(gender)

mydata %>% group_by(gender) %>% summarise(gender)


mydata<-read.csv("D:\\Amrutha\\sampledata.csv")
mydata

select(mydata,Index,State:Y2008)

df<-subset(mydata,select=-Index)
df
           



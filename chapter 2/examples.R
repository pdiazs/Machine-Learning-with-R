getwd()
setwd("/home/fwang/Machine-Learning-with-R/chapter 2")
usedcars=read.csv("usedcars.csv",stringsAsFactor=FALSE)
str(usedcars)
summary(usedcars$year)
summary(usedcars[c("price","mileage")])
range(usedcars$price)
diff(range(usedcars$price))
IQR(usedcars$price)
quantile(usedcars$price)
quantile(usedcars$price,probs=c(0.01,0.99))
quantile(usedcars$price,seq(from=0,to=1,by=0.20))
boxplot(usedcars$price,main="Boxplot of Used Car Prices",ylab="Price ($)")
boxplot(usedcars$mileage,main="Boxplot of Used Car Mileage",ylab="Odometer (mi.)")

hist(usedcars$price,main="Histgram of Used Car Prices",xlab="Price ($)")
hist(usedcars$mileage,main="Histgram of Used Car Mileage",xlab="Odometer (mi.)")

var(usedcars$price)
sd(usedcars$price)
var(usedcars$mileage)
sd(usedcars$mileage)

table(usedcars$year)
table(usedcars$model)
table(usedcars$color)
model.table=table(usedcars$model)
prop.table(model.table)
color.table=table(usedcars$color)
color.pct=prop.table(color.table)*100
round(color.pct,digits=1)

names(which.max(table(usedcars$color))) # mode: the central tendency

plot(x=usedcars$mileage,y=usedcars$price,main="Scatterplot of Price vs. Mileage",xlab="Used Car Odometer (mi.)",ylab="Used Car Price ($)")

library(gmodels)
usedcars$conservative=usedcars$color%in% c("Black","Gray","Silver","White")
table(usedcars$conservative)
CrossTable(x=usedcars$model,y=usedcars$conservative)


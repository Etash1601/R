# Data Visualization

library(help="graphics")
dat=airquality

View(dat)

plot(dat$Ozone)
plot(dat$Ozone,dat$Wind)

freq=table(dat$Month)
plot(freq)

plot(airquality)

boxplot(dat$Ozone)
boxplot(dat[,1:4],main="multiple box plot")

# ggplot()
library(ggplot2)

ggplot(iris, aes(x=Sepal.Length, y=Petal.Length))+geom_point()
ggplot(dat=mtcars, mapping=aes(x=wt,y=mpg))+geom_point()

ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_point()

ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species, shape=Species))+geom_point()

ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_smooth()

ggplot(mtcars, aes(x=mpg))+geom_bar()
ggplot(mtcars, aes(x=mpg))+geom_histogram()
ggplot(mtcars, aes(x=mpg))+geom_boxplot()

#Q2
rm(list=ls())
library(MASS)
View(survey)
dat=survey

library(ggplot2)

ggplot(survey, aes(x = Sex, fill = Sex)) +geom_bar()+labs(title = "Male and Female participants",y = "frequency") +
  scale_fill_manual(values = c("blue", "pink"))


ggplot(survey, aes(x = W.Hnd, fill = W.Hnd)) +geom_bar() +labs(title = "Left Handers and Right Handers",
       y = "count") +scale_fill_manual(values = c("green", "orange"))


left_handers <- survey[survey$W.Hnd == "Left", ]
ggplot(left_handers, aes(x = Sex, fill = Sex)) +geom_bar() +labs(title = "Female Left Handers and Male Left Handers",
       y = "count") +scale_fill_manual(values = c("pink", "blue"))


ggplot(survey, aes(x = Age)) +geom_histogram(binwidth = 5, fill = "lightblue", color = "black") +labs(title = "Age distribution",
       x = "Age range",y = "frequency")


ggplot(survey, aes(x = Age, y = Wr.Hnd)) +geom_point() +labs(title = "Relationship between Age and Writing Hand Span",
       x = "Age",y = "Writing Hand Span")


ggplot(survey, aes(x = "", y = Pulse)) +geom_boxplot(fill = "lightgreen", color = "black") +labs(title = "Boxplot of Pulse Rate",
       y = "Pulse Rate")

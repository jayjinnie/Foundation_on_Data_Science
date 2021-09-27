X <- 2
X
Y <- 2L
Y
X <- 1
Y <- X+1
Z = X + 3
X+Y <- Z

rep(c(1,2,3), times=3)
rep(c(1,2,3), each=3)
rep(c(1,2,3), 3) / (2)

X = c(1,2,3,4,5,6,7,8,9,10)
1 / 2 == 1
2 / 2 == 1

data("ChickWeight")
data("women")
head(ChickWeight)
tail(ChickWeight)

w = ChickWeight["weight"]
w.mean()
data = ChickWeight
data.info()
info(data)
cars
str(cars)
str(ChickWeight)
plot(women)
plot(ChickWeight)
plot(cars, col='blue')
plot(cars, col='blue', xlab='속도', ylab='거리', pch=18)
plot(data, col='red', xlab='Time', ylab='weight')

?plot
getwd()
setwd("~/DS_for_class")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("gapminder")
library(gapminder)
head(gapminder)

str(iris)

plot(iris)
plot(iris$Petal.Width, iris$Petal.Length, col=iris$Species)

X <- c(1,2,3,4,5,6,7,8,9,10)
X
X %% 2 == 1
X % 2 == 1

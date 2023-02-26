#Statistics

x <-c(12,7,3,4,5,18,12,-21,8,3,-5)

#Mean
result.mean<-mean(x)
result.mean

#Trim_mean
results.mean <-mean(x,trim=0.3)
results.mean                   

#Median 
median.result<- median(x)
median.result

#Mode
getMethod( )


#Linear Regression
y = ax+b

women

relation<- lm(women$weight~women$height)
relation





print(summary(relation))

a<-data.frame(x=170)
a

result<-predict(relation,a)
result


#Multiple Regression

mtcars

#Creating subset of dataset

inputb <- mtcars[,c("mpg","disp","hp","wt")]
inputb

model <- lm(mpg~disp+hp+wt, data=input)
model
a <-coef(model)[1]
a

Xdisp<-coef(model)[2]
xhp<-coef(model)[3]
Xwt<-coef(model)[4]

Xdisp
Xwt
xhp

Y = a+ Xdisp*x1+xhp*221+xhp*102+Xwt*2.91
Y


#LogstiRegaction

input<-mtcars[,c("am","cyl","hp","wt")]
print(head(input))

am.data = glm(formula = am~cyl+hp+wt,data = input, family = binomial)

am.data


summary(am.data)


#Normal Distribution
#dnorm
x <-seq(-10,10, by =.1)
x

y <-dnorm(x,mean=2.5, sds=0.5)
y
y<-dnorm(x,mean = 2.5, sd=0.5)
y

plot(x,y)


#pnorm

x <-seq(-10,10, by =.2)

y<-pnorm(x <-q,mean = 2.5 , sd = 2)
y

x<-seq(0,1 ,by= 0.02)

x<-seq(0,1, by=0.02)
x

y<-qnorm(x,mean = 2 , sd=1)
plot(x,y)


y<-rnorm(50)
y
hist(y, main = "Normal Distribution Examples")


#Binomial Distribution

x <- seq(0,50, by= 1)
x
y <- dbinom(x,50,0.5)
y
plot(x,y)


x <-pbinom(26,51,0.5)
x
qbinom(0.25,51,1/2)


#Rbinom

x<-rbinom(8,150,-4)
x



#Poisson Regression

#log(y) = a + b1x1 +b2x2........

#glm(formula, data, family)


warpbreaks

input<- warpbreaks
input

output <- glm(formula =breaks~ wool+tension, data = warpbreaks , family = poisson())
otput
output

#Analysis of Cvariance

mtcars

# a model creating

input <-mtcars[,c("am","mpg","hp")]
input

print(head(input))

input <-mtcars
result<- aov(mpg~hp*am,data=input)

result

result1 <-aov(mpg~hp*am, data = input)
result2 <-aov(mpg~hp+am,data = input)

print(anova(result1, result2))


#Time Series Analysis

EuStockMarkets

tsData<- EuStockMarkets[,1]
tsData

decomposeRes<-decomposeRes(tsData, type = "mult")
plot(decomposeRes)
decomposeRes<-decompose(tsData,type = "mult")
plot(decomposeRes)


#Decision Tree

libary(party)
install.packages(party)


library(party)

install.packages("party")

library("party")

readingSkills

#Creaating a model

input.data <- readingSkills[c(1:105),]
input.data

#Decision Tree

install.packages("party")

require("party")

readingSkills

input.data



output.tree<-ctree( nativeSpeaker ~ age+shoeSize + score , data = input.data )

input.data

#anothere example

library("party")
iris

str(iris)

iris_ctree <-ctree(Species ~ Sepal.Length +Sepal.Width +Petal.Length+Petal.Width ,data = iris)

iris_ctree

plot(iris_ctree)

#Nonlinear Least Square

nls(formula, data, start)

install.packages("randomeForest")

install.packages("randomForest")

require("randomForest")
library("randomForest")

readingSkills

print(head(readingSkills))

library(party)

output.forest<-randomForest(nativeSpeaker~ age+shoeSize+score , data = readingSkills)
output.forest


print(importance(fit, type =2))

#Survival Analysis

install.packages("survival")

library(survival)
pbc

survfit(surv(pbc$time , pbc$status == 2)-1)

survfit(Surv(pbc$time, pbc$status ==2)~1)

plot(survfit(Surv(pbc$time, pbc$status ==2)~1))


map_data

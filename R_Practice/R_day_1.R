2+5

x <-2
x<-3
x
y <-c(1,2,3,4,5)

y <-1:10

x<-y <-1:10
x+y
z<-x+y
z
z2 <-10
x+y

ls()

rm(x)
remove(z2)

rm(list=ls())


browseURL("")

install.packages("ggplot")

library()

search()

require("ggplot")


data()

library(help = "datasets")
?iris
str(iris)

iris

data("iris")

x1 <-1:10
x2 <-c(2,5,7,4)
x3 <-seq(5,50,  by =5)
x4 <-scan()

product <-read.table("C:/Users/piyus/Downloads/Product.txt", header =TRUE , sep ="\t")
str(product)

Customer <-read.csv("C:/Users/piyus/Downloads/Customer (1).csv", header = TRUE,)

Customer

View(Customer)
View(product)

# Creating a table form the coulms 
y <- table(Customer$Region)

y

View(y)

#Makeing the barplot 
barplot(y)

#arring the bar of the chart 
barplot(y[order(-y)])

# punting the Colurs in the bars
barplot(y[order(y)],horiz = TRUE ,col ="red")

#Puting  different colours to bars of the charts
barplot(y[order(y)], horiz = TRUE ,col = c("red","green","blue","beige"))

colours()

#Removing  the borders form the bars
barplot(y[order(y)], horiz = TRUE ,col = c("red","green","blue","beige"),border = NA)

#Giving the Name the Charts
barplot(y[order(y)], horiz = TRUE ,col = c("red","green","blue","beige"),
        border = NA, main = "Freq of Regions")

#Giving the customize Name the Customize 
barplot(y[order(y)], horiz = TRUE ,col = c("red","green","blue","beige"),
        border = NA, main = "Freq of \nRegions")

barplot(y[order(y)], horiz = TRUE ,col = c("red","green","blue","yellow"),
        border = NA, main = "Freq of Regions",xlab = "Number of Customers")


#Creating the histogram 
hist(Customer$Age)

# Barking the histogram according to the need 
hist(Customer$Age,breaks = 5)

# More custimozeing in the histogram 
hist(Customer$Age,breaks = c(0,40,60,100), freq = TRUE)

# Putting the to the chart 
hist(Customer$Age,breaks = c(0,40,60,100), freq = TRUE ,col = "blue",main = "Histogram of Age")



df = read.csv("C:/Users/piyus/Downloads/House_Price.csv" , header =TRUE)

str(df)

hist(df$crime_rate)

pairs(~price +crime_rate+n_hot_rooms+rainfall,data = df)

barplot(table(df$airport))

barplot(table(df$waterbody))

barplot(table(df$bus_ter))


#Observation
#n_hot_roomsand rainfall has outliers
#bus_term is a useless variable

quantile(df$n_hot_rooms ,0.99)
uv = 3* quantile(df$n_hot_rooms  ,0.99)
df$n_hot_rooms[df$n_hot_rooms> uv] < - uv

summary(df$n_hot_rooms)

lv= 0.3*quantile(df$rainfall ,0.01)
summary(df$rainfall)

#Working with Naa Values
#Knowing about the cloumn
mean(df$n_hos_beds)

mean(df$n_hos_beds,na.rm = TRUE)

#Finding the na values in the columns
which(is.na(df$n_hos_beds))

#Removing the Na values 
df$n_hos_beds[is.na(df$n_hos_beds)] < - mean(df$n_hos_beds,na.rm = TRUE)


summary(df$n_hos_beds)

which(is.na(df$n_hos_beds))

# Working the the Seasonality
#Evacuate Analysis 



pairs(~price+ crime_rate ,data = df)

plot(df$price,df$crime_rate)

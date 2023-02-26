# Creating   a varible x
x

# Creating  a leagles for the pie chart 
labels<- c("London","new York" , "Tokyo", "mubai")

#Creating  a pie chart 
pie(x,labels)

# Giving the header to the pie chart 
pie(x, labels , main = "City wise distribution", col=rainbow(length(x)))

#installing packages
install.packages( "plotrix")

require("plotrix")

labels

library("plotrix")

#3D pie chart 
pie3D(x,labels =labels , explode = 0.1 , main= "Pie chart of cities")

#Bar polts 
H<- c(7,12,28,3,41)

barplot(H)
M <-c("Jan","Feb","March","Apr","Jun")

barplot(H,names.arg = M ,main = "Revenue chart" , 
        xlab = "Month", ylab = "Revenue generated", col = "Blue")

colors <- c("green","blue","brown")


months <-c("Jan","Feb","March","Apr","May")

regions <- c("East","West","Norht")

values <- martrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3 , ncol = 5 , byrow = TRUE)


library(ggplot2)

# Create a data frame with sample data
df <- data.frame(
  category = c("A", "B", "C"),
  subcategory1 = c(10, 20, 30),
  subcategory2 = c(5, 15, 25)
)
df
# Plot the stacked bar chart
ggplot(df, aes(x = category, y = subcategory1, fill = "subcategory1")) +
  geom_bar(stat = "identity") +
  geom_bar(aes(x = category, y = subcategory2, fill = "subcategory2"), stat = "identity") +
  ggtitle("Stacked Bar Chart") +
  xlab("Category") +
  ylab("Value") +
  scale_fill_manual(name = "Subcategory", values = c("subcategory1" = "blue", 
                                                     "subcategory2" = "green"))


#Boxplots

mtcars

input <-mtcars[,c('mpg','cyl')]

boxplot(input , data = "mtcars" , xlab= "Numver of cylinders" , ylab = "Miles per gallon" ,
        main = "Mileage Data")


USArrests

UScitiesD

#Boxplot
boxplot(Murder ~ Assault , data = USArrests)

boxplot(Murder ~ Assault , data = USArrests , xlab = "No of Murder Cases" , 
        ylab = "No of Asssult" , main = "US Arrest Cases")

#Histogram 

v <-c(9,13,21,8,36,12,41,33,19)
v

hist(v , xlab = "weight" , col="blue")

install.packages(mass)
install.packages("MASS")

library('MASS')

Cars93

data("cars93",package = "MASS")
hist(Cars93$MPG.city)
hist(Cars93$MPG.city,20)


#Line Charts

v <-c(7,12,28,3,41)

plot(v,type = "o")

plot(v,type = "o" , col="red" , xlab = "Month" , ylab ="Rainfall" , main = "Rainfallchart")

t <-c(14,7,6,19,3)

plot(v , type = "o" , col="red" , xlab = "Month" , ylab = "Rain fall" , 
     main ="Rain fall chart fo year 2017")

plot(v , type = "o" , col="red" , xlab = "Month" , ylab = "Rain fall" , 
     main ="Rain fall chart fo year 2017")
line(t,type ="o", col="blue")





input <- mtcars[,c('wt','mpg')]
input
plot(x = input$wt , y=imput$mpg , xlab ="weight" 
     , ylab="Mileage" , xlim=c(2,5,5) , ylim = c(1,5,30))

iris

with(iris, plot(petal.Length,petal.width))

with(iris, plot(petal.Length,Petal.width,pch = as.integer(species)))

samp <- rgamma(500,2,2)
samp

hist(samp)

hist(samp, prob=T)

lines(density(samp))

#Multile Line
mtcars

